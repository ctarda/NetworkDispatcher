import XCTest
@testable import NetworkDispatcher

final class NetworkDispatcherTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(NetworkDispatcher().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
