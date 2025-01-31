// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "CareKit",
    platforms: [.iOS(.v13), .macOS(.v10_15)],
    products: [
        .library(
            name: "CareKit",
            type: .static,
            targets: ["CareKit"]),

        .library(
            name: "CareKitUI",
            type: .static,
            targets: ["CareKitUI"]),

        .library(
            name: "CareKitStore",
            type: .static,
            targets: ["CareKitStore"])
    ],
    targets: [
        .target(
            name: "CareKit",
            dependencies: ["CareKitUI", "CareKitStore"],
            path: "CareKit/CareKit"),

        .target(
            name: "CareKitUI",
            path: "CareKitUI/CareKitUI"),

        .target(
            name: "CareKitStore",
            path: "CareKitStore/CareKitStore"),

        .testTarget(
            name: "CareKitStoreTests",
            dependencies: ["CareKitStore"],
            path: "CareKitStore/CareKitStoreTests"),

        .testTarget(
            name: "CareKitTests",
            dependencies: ["CareKit"],
            path: "CareKit/CareKitTests")
    ]
)
