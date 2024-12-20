// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "YOLOModule",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "YOLOModule",
            targets: ["YOLOModule"]),
    ],
    targets: [
        .target(
            name: "YOLOModule",
            dependencies: [],
            resources: [
                .copy("Yolov3.mlpackage")
            ]),
        .testTarget(
            name: "YOLOModuleTests",
            dependencies: ["YOLOModule"]),
    ]
)
