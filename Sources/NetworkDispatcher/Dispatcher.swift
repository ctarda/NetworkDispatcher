import Foundation
import Combine

public protocol Dispatcher {
    func dispatch<T: Decodable>(_ request: URLRequest, _ decoder: JSONDecoder) -> AnyPublisher<Response<T>, Error>
}
