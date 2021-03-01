import XCTest
@testable import DataModule

final class DataModuleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DataModule().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
