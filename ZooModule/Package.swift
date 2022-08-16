// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZooModule",
    products: [
        .library(
            name: "ZooModule",
            targets: ["ZooModule"]
        ),
        .executable(
            name: "zoo",
            targets: ["zoo"]
        )
    ],
    dependencies: [
        .package(name: "AnimalModule", path: "../AnimalModule")
    ],
    targets: [
        .target(
            name: "ZooModule",
            dependencies: [
                .product(name: "AnimalModule", package: "AnimalModule")
            ]
        ),
        .executableTarget(
            name: "zoo",
            dependencies: [
                .target(name: "ZooModule")
            ]
        )
    ]
)
