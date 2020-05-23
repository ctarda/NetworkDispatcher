import Foundation
import Combine

public struct DefaultDispatcher: Dispatcher {
    func dispatch<T>(_ request: URLRequest, _ decoder: JSONDecoder = JSONDecoder()) -> AnyPublisher<Response<T>, Error> where T : Decodable {
        return URLSession.shared
            .dataTaskPublisher(for: request)
            .tryMap { result -> Response<T> in
                let value = try decoder.decode(T.self, from: result.data)
                return Response(value: value, response: result.response)
            }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
}
