// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "InjectSupportMock",
    products: [
        .library(
            name: "InjectSupportMock",
            targets: ["InjectSupportMock"])
    ],
    dependencies: [
        .package(path: "../../../Contracts/Supports/InjectSupportContract")
    ],
    targets: [
        .target(
            name: "InjectSupportMock",
            dependencies: [
                "InjectSupportContract"
            ]
        )
    ]
)
