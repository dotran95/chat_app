//
//  Router.swift
//  Chat
//
//  Created by Do Tran on 20/10/2021.
//

import Foundation
import Combine

class Router {
    
    private var route: Endpoint
    private var task: URLSession.DataTaskPublisher?
    
    init(_ endpoint: Endpoint) {
        self.route = endpoint
    }
    
    private func createUrl() -> URL {
        var components = URLComponents(url: URL(string: baseURL)!, resolvingAgainstBaseURL: true)!
        components.path = route.path
        components.queryItems = (route.query ?? [:]).map({ (key, value) -> URLQueryItem in
            return URLQueryItem(name: key, value: String(describing: value))
        })
        return components.url!
    }
    
    private func createRequest() -> URLRequest {
        let url = createUrl()
        var request = URLRequest(url: url)
        request.httpMethod = route.method.rawValue
        encoding(request: &request, body: route.body ?? [:])
        return request
    }
    
    private func encoding(request: inout URLRequest, body: [String:Any]) {
        switch route.encode {
        case .json:
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            guard let json = try? JSONSerialization.data(withJSONObject: body, options: .prettyPrinted) else {
                return
            }
            request.httpBody = json
            break
        case .formData:
            request.addValue("multipart/form-data", forHTTPHeaderField: "Content-Type")
            break
        default:
            break
        }
    }
}

extension Router {
    func request<T: Decodable>() -> AnyPublisher<BaseResponse<T>, Error>? {
        let request = createRequest()
        task = URLSession.shared.dataTaskPublisher(for: request)
        return task?.map { $0.data }.decode(type: BaseResponse<T>.self, decoder: JSONDecoder()).eraseToAnyPublisher()
    }
}
