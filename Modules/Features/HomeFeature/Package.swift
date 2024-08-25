// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "HomeFeature",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "HomeFeature",
            targets: ["HomeFeature"])
    ],
    dependencies: [
        .package(path: "../../Contracts/Features/HomeFeatureContract"),
        .package(path: "../../Supports/InjectSupport")
    ],
    targets: [
        .target(
            name: "HomeFeature",
            dependencies: [
                "HomeFeatureContract",
                "InjectSupport"
            ]
        ),
        .testTarget(
            name: "HomeFeatureTests",
            dependencies: [
                "HomeFeature"
            ]
        )
    ]
)
