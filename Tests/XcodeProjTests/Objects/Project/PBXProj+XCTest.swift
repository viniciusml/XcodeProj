import Foundation
@testable import XcodeProjj

extension PBXProj {
    func encode() throws -> String {
        let outputSettings = PBXOutputSettings()
        let encoder = PBXProjEncoder(outputSettings: outputSettings)
        return try encoder.encode(proj: self)
    }
}
