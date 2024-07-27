// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NRStarRatingView",
    platforms: [
           .iOS(.v13) // Adjust based on your needs
       ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NRStarRatingView",
            targets: ["NRStarRatingView"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NRStarRatingView"),
        .testTarget(
            name: "NRStarRatingViewTests",
            dependencies: ["NRStarRatingView"]),
    ]
)
