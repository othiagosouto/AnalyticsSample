// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "FoodAnalyticsSupportMock",
    products: [
        .library(
            name: "FoodAnalyticsSupportMock",
            targets: ["FoodAnalyticsSupportMock"])
    ],
    dependencies: [
        .package(path: "../../../Contracts/Supports/FoodAnalyticsSupportContract")
    ],
    targets: [
        .target(
            name: "FoodAnalyticsSupportMock",
            dependencies: [
                "FoodAnalyticsSupportContract"
            ]
        )
    ]
)
