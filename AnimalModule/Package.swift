// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnimalModule",
    products: [
        .library(
            name: "AnimalModule",
            targets: ["AnimalModule"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "AnimalModule",
            dependencies: []
        )
    ]
)
