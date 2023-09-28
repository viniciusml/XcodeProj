// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "XcodeProjj",
    products: [
        .library(name: "XcodeProjj", targets: ["XcodeProjj"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tadija/AEXML.git", .upToNextMinor(from: "4.6.1")),
        .package(url: "https://github.com/kylef/PathKit.git", .upToNextMinor(from: "1.0.1")),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0")
    ],
    targets: [
        .target(name: "XcodeProjj",
                dependencies: [
                    "PathKit",
                    "AEXML",
                ]),
        .testTarget(name: "XcodeProjTests", dependencies: ["XcodeProjj"]),
    ]
)
