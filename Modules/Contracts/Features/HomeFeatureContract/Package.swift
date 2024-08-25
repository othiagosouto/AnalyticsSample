// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "HomeFeatureContract",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "HomeFeatureContract",
            targets: ["HomeFeatureContract"])
    ],
    dependencies: [
        .package(path: "../../../Supports/AnalyticsSupport")
    ],
    targets: [
        .target(
            name: "HomeFeatureContract",
            dependencies: [
                "AnalyticsSupport"
            ]
        )
    ]
)
