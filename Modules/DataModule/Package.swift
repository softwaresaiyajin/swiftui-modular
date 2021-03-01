// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataModule",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DataModule",
            targets: ["DataModule"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Hearst-DD/ObjectMapper", from: "4.2.0")
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "DataModule",
            dependencies: ["ObjectMapper"], resources: [.process("Resources/online_shops.json")]),
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .testTarget(
            name: "DataModuleTests",
            dependencies: ["DataModule"]),
    ]
)
