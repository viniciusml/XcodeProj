import Foundation
import XcodeProjj
import XCTest

final class PBXVariantGroupTests: XCTestCase {
    func test_itHasTheCorrectIsa() {
        XCTAssertEqual(PBXVariantGroup.isa, "PBXVariantGroup")
    }
}
