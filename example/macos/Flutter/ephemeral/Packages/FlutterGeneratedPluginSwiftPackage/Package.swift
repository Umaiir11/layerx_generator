// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//  Generated file. Do not edit.
//

import PackageDescription

let package = Package(
    name: "FlutterGeneratedPluginSwiftPackage",
    platforms: [
        .macOS("10.14")
    ],
    products: [
        .library(name: "FlutterGeneratedPluginSwiftPackage", type: .static, targets: ["FlutterGeneratedPluginSwiftPackage"])
    ],
    dependencies: [
        .package(name: "geolocator_apple", path: "/Users/umairhashmi/.pub-cache/hosted/pub.dev/geolocator_apple-2.3.13/darwin/geolocator_apple"),
        .package(name: "path_provider_foundation", path: "/Users/umairhashmi/.pub-cache/hosted/pub.dev/path_provider_foundation-2.4.1/darwin/path_provider_foundation"),
        .package(name: "shared_preferences_foundation", path: "/Users/umairhashmi/.pub-cache/hosted/pub.dev/shared_preferences_foundation-2.5.4/darwin/shared_preferences_foundation")
    ],
    targets: [
        .target(
            name: "FlutterGeneratedPluginSwiftPackage",
            dependencies: [
                .product(name: "geolocator-apple", package: "geolocator_apple"),
                .product(name: "path-provider-foundation", package: "path_provider_foundation"),
                .product(name: "shared-preferences-foundation", package: "shared_preferences_foundation")
            ]
        )
    ]
)
