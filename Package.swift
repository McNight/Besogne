// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Besogne",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .watchOS(.v4),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "Besogne",
            targets: ["Besogne"]
        ),
    ],
    targets: [
        .target(
            name: "Besogne",
            swiftSettings: [
                .enableExperimentalFeature("NonescapableTypes"),
                .enableUpcomingFeature("InternalImportsByDefault")
            ]
        ),
        .testTarget(
            name: "BesogneTests",
            dependencies: ["Besogne"]
        ),
    ]
)
