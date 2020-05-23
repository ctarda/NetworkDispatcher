import XCTest
@testable import NetworkDispatcher

final class ResponseTests: XCTestCase {
    private var subject: Response<ModelObject>!
    
    private struct ModelObject: Identifiable, Equatable {
        let id: String
    }

    override func setUpWithError() throws {
        let model = modelObject()
        let response = urlResponse()
        
        subject = Response(value: model, response: response)
    }

    override func tearDownWithError() throws {
        subject = nil
    }

    func testExample() throws {
        XCTAssertEqual(subject.value, modelObject())
    }
}

private extension ResponseTests {
    private func modelObject() -> ModelObject {
        return ModelObject(id: "Mock")
    }
    
    func urlResponse() -> URLResponse {
        return URLResponse()
    }
}
