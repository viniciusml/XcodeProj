import Foundation
import XcodeProjj
import XCTest

class PBXSourcesBuildPhaseTests: XCTestCase {
    func test_itHasTheCorrectIsa() {
        XCTAssertEqual(PBXSourcesBuildPhase.isa, "PBXSourcesBuildPhase")
    }
}
