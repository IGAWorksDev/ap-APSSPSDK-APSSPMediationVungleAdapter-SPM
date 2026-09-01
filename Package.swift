// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "APSSPMediationVungle",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "APSSPMediationVungle", targets: ["APSSPMediationVungle"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IGAWorksDev/ap-APSSPSDK-SPM.git", from: "3.4.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.7.7"),
    ],
    targets: [
        .target(name: "APSSPMediationVungle",
                dependencies: [
                    .product(name: "APSSPSDK", package: "ap-APSSPSDK-SPM"),
                    .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                ],
                path: "Sources/MediationVungle"),
    ]
)
