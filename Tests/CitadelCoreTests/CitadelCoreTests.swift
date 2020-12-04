import XCTest
@testable import CitadelCore

final class CitadelCoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CitadelCore().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
