// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FastagSdkIos",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "FastagSdkIos",
            targets: ["FastagSdkIos"]),
    ],
    targets: [
        .target(
            name: "FastagSdkIos",
            dependencies: [
                "fastagiosapp",
                "fastagwrapperios",
            ],
            path: "Sources/FastagSdkIos"
        ),        
        .binaryTarget(
            name: "fastagwrapperios",
            path: "./fastagwrapperios.xcframework"
        ),        
        .binaryTarget(
            name: "fastagiosapp",
            path: "./FastagIos.xcframework"
        ),        
    ]
)


