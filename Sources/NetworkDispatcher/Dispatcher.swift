import Foundation
import Combine

protocol Dispatcher {
    func dispatch<T: Decodable>(_ request: URLRequest, _ decoder: JSONDecoder) -> AnyPublisher<Response<T>, Error>
}
