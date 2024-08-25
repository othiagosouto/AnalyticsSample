// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "InjectSupportContract",
    products: [
        .library(
            name: "InjectSupportContract",
            type: .static,
            targets: ["InjectSupportContract"])
    ],
    targets: [
        .target(
            name: "InjectSupportContract"
        )
    ]
)
