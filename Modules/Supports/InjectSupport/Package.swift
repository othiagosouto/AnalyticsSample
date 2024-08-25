// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "InjectSupport",
    products: [
        .library(
            name: "InjectSupport",
            targets: ["InjectSupport"])
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory.git", exact: "2.3.2")
    ],
    targets: [
        .target(
            name: "InjectSupport",
            dependencies: [
                "Factory"
            ]
        ),
        .testTarget(
            name: "InjectSupportTests",
            dependencies: [
                "InjectSupport"
            ]
        )
    ]
)
