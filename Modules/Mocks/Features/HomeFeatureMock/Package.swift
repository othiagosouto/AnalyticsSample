// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "HomeFeatureMock",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "HomeFeatureMock",
            type: .dynamic,
            targets: ["HomeFeatureMock"])
    ],
    dependencies: [
        .package(path: "../../../Contracts/Features/HomeFeatureContract")
    ],
    targets: [
        .target(
            name: "HomeFeatureMock",
            dependencies: [
                "HomeFeatureContract"
            ]
        )
    ]
)
