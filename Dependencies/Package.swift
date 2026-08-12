// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Dependencies",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "Dependencies", targets: ["Dependencies"])
    ],
    dependencies: [
        .package(id: "firebase.firebase-ios-sdk", from: "12.17.0"),
        .package(id: "RevenueCat.purchases-ios-spm", from: "5.83.1"),
        .package(id: "lzell.AIProxySwift", from: "0.155.0"),
        .package(id: "evgenyneu.keychain-swift", from: "24.0.0"),
        .package(id: "airbnb.lottie-spm", from: "4.6.1"),
    ],
    targets: [
        .target(
            name: "Dependencies",
            dependencies: [
                .product(name: "FirebaseAuth", package: "firebase.firebase-ios-sdk"),
                .product(name: "FirebaseFirestore", package: "firebase.firebase-ios-sdk"),
                .product(name: "FirebaseAnalytics", package: "firebase.firebase-ios-sdk"),
                .product(name: "RevenueCat", package: "RevenueCat.purchases-ios-spm"),
                .product(name: "AIProxy", package: "lzell.AIProxySwift"),
                .product(name: "KeychainSwift", package: "evgenyneu.keychain-swift"),
                .product(name: "Lottie", package: "airbnb.lottie-spm"),
            ]
        )
    ]
)
