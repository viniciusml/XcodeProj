import Foundation
import XCTest
@testable import XcodeProjj

final class PBXCopyFilesBuildPhaseTests: XCTestCase {
    func test_subFolder_Path_hasTheCorrectValue() {
        XCTAssertEqual(PBXCopyFilesBuildPhase.SubFolder.absolutePath.rawValue, 0)
    }

    func test_subFolder_producsDirectory_hasTheCorrectValue() {
        XCTAssertEqual(PBXCopyFilesBuildPhase.SubFolder.productsDirectory.rawValue, 16)
    }

    func test_subFolder_wrapper_hasTheCorrectValue() {
        XCTAssertEqual(PBXCopyFilesBuildPhase.SubFolder.wrapper.rawValue, 1)
    }

    func test_subFolder_executables_hasTheCorrectValue() {
        XCTAssertEqual(PBXCopyFilesBuildPhase.SubFolder.executables.rawValue, 6)
    }

    func test_subFolder_resources_hasTheCorrectValue() {
        XCTAssertEqual(PBXCopyFilesBuildPhase.SubFolder.resources.rawValue, 7)
    }

    func test_subFolder_javaResources_hasTheCorrectValue() {
        XCTAssertEqual(PBXCopyFilesBuildPhase.SubFolder.javaResources.rawValue, 15)
    }

    func test_subFolder_frameworks_hasTheCorrectValue() {
        XCTAssertEqual(PBXCopyFilesBuildPhase.SubFolder.frameworks.rawValue, 10)
    }

    func test_subFolder_sharedFrameworks_hasTheCorrectValue() {
        XCTAssertEqual(PBXCopyFilesBuildPhase.SubFolder.sharedFrameworks.rawValue, 11)
    }

    func test_subFolder_sharedSupport_hasTheCorrectValue() {
        XCTAssertEqual(PBXCopyFilesBuildPhase.SubFolder.sharedSupport.rawValue, 12)
    }

    func test_subFolder_plugins_hasTheCorrectValue() {
        XCTAssertEqual(PBXCopyFilesBuildPhase.SubFolder.plugins.rawValue, 13)
    }

    func test_init_fails_whenDstPathIsMissing() {
        var dictionary = testDictionary()
        dictionary.removeValue(forKey: "dstPath")
        let data = try! JSONSerialization.data(withJSONObject: dictionary, options: [])
        let decoder = XcodeprojJSONDecoder()
        do {
            let phase = try decoder.decode(PBXCopyFilesBuildPhase.self, from: data)
            XCTAssertNil(phase.dstPath, "Expected dstPath to be nil but it's present")
        } catch {}
    }

    func test_init_fails_whenBuildActionMaskIsMissing() {
        var dictionary = testDictionary()
        dictionary.removeValue(forKey: "buildActionMask")
        let data = try! JSONSerialization.data(withJSONObject: dictionary, options: [])
        let decoder = XcodeprojJSONDecoder()
        do {
            let phase = try decoder.decode(PBXCopyFilesBuildPhase.self, from: data)
            XCTAssertEqual(phase.buildActionMask, PBXBuildPhase.defaultBuildActionMask, "Expected buildActionMask to be equal to \(PBXBuildPhase.defaultBuildActionMask) but it's \(phase.buildActionMask)")
        } catch {}
    }

    func test_init_fails_whenDstSubfolderSpecIsMissing() {
        var dictionary = testDictionary()
        dictionary.removeValue(forKey: "dstSubfolderSpec")
        let data = try! JSONSerialization.data(withJSONObject: dictionary, options: [])
        let decoder = XcodeprojJSONDecoder()
        do {
            let phase = try decoder.decode(PBXCopyFilesBuildPhase.self, from: data)
            XCTAssertNil(phase.dstSubfolderSpec, "Expected dstSubfolderSpec to be nil but it's present")
        } catch {}
    }

    func test_init_fails_whenFilesIsMissing() {
        var dictionary = testDictionary()
        dictionary.removeValue(forKey: "files")
        let data = try! JSONSerialization.data(withJSONObject: dictionary, options: [])
        let decoder = XcodeprojJSONDecoder()
        do {
            let phase = try decoder.decode(PBXCopyFilesBuildPhase.self, from: data)
            XCTAssertNil(phase.files, "Expected files to be nil but it's present")
        } catch {}
    }

    func test_init_fails_whenRunOnlyForDeploymentPostprocessingIsMissing() {
        var dictionary = testDictionary()
        dictionary.removeValue(forKey: "runOnlyForDeploymentPostprocessing")
        let data = try! JSONSerialization.data(withJSONObject: dictionary, options: [])
        let decoder = XcodeprojJSONDecoder()
        do {
            let phase = try decoder.decode(PBXCopyFilesBuildPhase.self, from: data)
            XCTAssertFalse(phase.runOnlyForDeploymentPostprocessing, "Expected runOnlyForDeploymentPostprocessing to default to false")
        } catch {}
    }

    func test_isa_returnsTheRightValue() {
        XCTAssertEqual(PBXCopyFilesBuildPhase.isa, "PBXCopyFilesBuildPhase")
    }

    func testDictionary() -> [String: Any] {
        [
            "dstPath": "dstPath",
            "buildActionMask": 0,
            "dstSubfolderSpec": 12,
            "files": ["a", "b"],
            "runOnlyForDeploymentPostprocessing": 0,
            "reference": "reference",
        ]
    }
}
