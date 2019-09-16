// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tor",
    products: [
        .library(
            name: "Tor",
            targets: ["Tor"]),
        .library(
            name: "Ctor",
            targets: ["Ctor"]),
    ],
    targets: [
        .target(
            name: "Tor",
            dependencies: [
                "Ctor"
            ]),
        .systemLibrary(
            name: "Ctor"),
        .testTarget(
            name: "TorTests",
            dependencies: ["Tor"]),
    ]
)
