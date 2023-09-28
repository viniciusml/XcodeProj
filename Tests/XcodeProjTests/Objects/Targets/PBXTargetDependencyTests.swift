import Foundation
import XCTest
@testable import XcodeProjj

final class PBXTargetDependencyTests: XCTestCase {
    func test_hasTheCorrectIsa() {
        XCTAssertEqual(PBXTargetDependency.isa, "PBXTargetDependency")
    }
}
