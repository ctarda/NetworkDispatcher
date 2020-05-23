import Foundation

public struct Response<T> {
    public let value: T
    public let response: URLResponse
}
