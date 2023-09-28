import Foundation

@testable import XcodeProjj

extension PBXSourcesBuildPhase {
    static func fixture(files: [PBXBuildFile] = []) -> PBXSourcesBuildPhase {
        PBXSourcesBuildPhase(files: files,
                             inputFileListPaths: nil,
                             outputFileListPaths: nil,
                             buildActionMask: PBXBuildPhase.defaultBuildActionMask,
                             runOnlyForDeploymentPostprocessing: false)
    }
}
