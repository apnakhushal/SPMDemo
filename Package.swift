// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMDemo",
    platforms: [
            .iOS(.v16) // Specifies the minimum iOS version
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SPMDemo",
            targets: ["SPMDemo"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/elai950/AlertToast", from: "1.3.9")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SPMDemo",
            dependencies: [
                .product(name: "AlertToast", package: "AlertToast")
            ],
            resources: [
                .process("Resources/")
            ]
        ),
        .testTarget(
            name: "SPMDemoTests",
            dependencies: ["SPMDemo"]
        ),
    ]
)
