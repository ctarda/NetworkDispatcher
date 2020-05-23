import Foundation

public struct Response<T> {
    let value: T
    let response: URLResponse
}
