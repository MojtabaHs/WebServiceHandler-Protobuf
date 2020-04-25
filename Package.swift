// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebServiceHandler+Protobuf",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "WebServiceHandler+Protobuf",
            targets: ["WebServiceHandler+Protobuf"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "WebServiceHandler", url: "https://github.com/MojtabaHs/WebServiceHandler", from: "1.0.1"),
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf", from: "1.8.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "WebServiceHandler+Protobuf",
            dependencies: ["WebServiceHandler", "SwiftProtobuf"]),
    ]
)
