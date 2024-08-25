// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AnalyticsSupport",
    products: [
        .library(
            name: "AnalyticsSupport",
            targets: ["AnalyticsSupport"])
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory.git", exact: "2.3.2")
    ],
    targets: [
        .target(
            name: "AnalyticsSupport",
            dependencies: [
                "Factory"
            ]
        )
    ]
)
