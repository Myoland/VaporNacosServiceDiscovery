// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VaporNacosServiceDiscovery",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VaporNacosServiceDiscovery",
            targets: ["VaporNacosServiceDiscovery"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-service-discovery", from: "1.2.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "VaporNacosServiceDiscovery",
            dependencies: [
                .product(name: "ServiceDiscovery", package: "swift-service-discovery")
            ]
        ),
        .testTarget(
            name: "VaporNacosServiceDiscoveryTests",
            dependencies: ["VaporNacosServiceDiscovery"]),
    ]
)
