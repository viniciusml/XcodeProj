import Foundation
@testable import XcodeProjj

extension XCBuildConfiguration {
    static func fixture(name: String = "Debug") -> XCBuildConfiguration {
        XCBuildConfiguration(name: name)
    }
}
