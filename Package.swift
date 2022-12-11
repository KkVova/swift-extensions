// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-extensions",
    platforms: [
        .iOS(.v15)
      ],
    products: [
        .library(
            name: "KkVovaUIKitExtensions",
            targets: ["KkVovaUIKitExtensions"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "KkVovaUIKitExtensions",
            dependencies: []),
    ]
)
