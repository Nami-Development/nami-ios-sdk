// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NamiECRPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NamiECRPackage",
            targets: ["NamiECRPackage","NamiECRSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "NamiECRSDK",
            url: "https://github.com/Nami-Development/nami-ios-sdk/releases/download/1.0.1/NamiECRSDK.xcframework.zip",
            checksum: "a31cfa93794ce97864d03bc2e721461acc25246ae36e6d9c3b3ec9de2f8edd6c"
        ),
        .target(
            name: "NamiECRPackage",
            dependencies: ["NamiECRSDK"]
        ),

    ],
    swiftLanguageModes: [.v6]
)
