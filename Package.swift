// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTor",
    products: [
        .library(
            name: "SwiftTor",
            targets: ["SwiftTor"]),
        .library(
            name: "Ctor",
            targets: ["Ctor"]),
    ],
    targets: [
        .target(
            name: "SwiftTor",
            dependencies: [
                "Ctor"
            ]),
        .systemLibrary(
            name: "Ctor"),
        .testTarget(
            name: "SwiftTorTests",
            dependencies: ["SwiftTor"]),
    ]
)
