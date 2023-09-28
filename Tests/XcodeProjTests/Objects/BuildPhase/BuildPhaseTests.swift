import Foundation
import XcodeProjj
import XCTest

class BuildPhaseTests: XCTestCase {
    func test_sources_hasTheCorrectRawValue() {
        XCTAssertEqual(BuildPhase.sources.rawValue, "Sources")
    }

    func test_frameworks_hasTheCorrectRawValue() {
        XCTAssertEqual(BuildPhase.frameworks.rawValue, "Frameworks")
    }

    func test_resources_hasTheCorrectRawValue() {
        XCTAssertEqual(BuildPhase.resources.rawValue, "Resources")
    }

    func test_copyFiles_hasTheCorrectRawValue() {
        XCTAssertEqual(BuildPhase.copyFiles.rawValue, "CopyFiles")
    }

    func test_runStript_hasTheCorrectRawValue() {
        XCTAssertEqual(BuildPhase.runScript.rawValue, "Run Script")
    }

    func test_headers_hasTheCorrectRawValue() {
        XCTAssertEqual(BuildPhase.headers.rawValue, "Headers")
    }

    func test_carbonResources_hasTheCorrectRawValue() {
        XCTAssertEqual(BuildPhase.carbonResources.rawValue, "Rez")
    }

    func test_sources_hasTheCorrectBuildPhase() {
        XCTAssertEqual(BuildPhase.sources, PBXSourcesBuildPhase().buildPhase)
    }

    func test_frameworks_hasTheCorrectBuildPhase() {
        XCTAssertEqual(BuildPhase.frameworks, PBXFrameworksBuildPhase().buildPhase)
    }

    func test_resources_hasTheCorrectBuildPhase() {
        XCTAssertEqual(BuildPhase.resources, PBXResourcesBuildPhase().buildPhase)
    }

    func test_copyFiles_hasTheCorrectBuildPhase() {
        XCTAssertEqual(BuildPhase.copyFiles, PBXCopyFilesBuildPhase().buildPhase)
    }

    func test_runStript_hasTheCorrectBuildPhase() {
        XCTAssertEqual(BuildPhase.runScript, PBXShellScriptBuildPhase().buildPhase)
    }

    func test_headers_hasTheCorrectBuildPhase() {
        XCTAssertEqual(BuildPhase.headers, PBXHeadersBuildPhase().buildPhase)
    }

    func test_carbonResources_hasTheCorrectBuildPhase() {
        XCTAssertEqual(BuildPhase.carbonResources, PBXRezBuildPhase().buildPhase)
    }
}
