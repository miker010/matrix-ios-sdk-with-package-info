// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MatrixSDK",
    platforms: [
        .iOS(.v14)  // Zorg ervoor dat je de juiste minimale iOS-versie instelt.
    ],
    products: [
        .library(
            name: "MatrixSDK",
            targets: ["MatrixSDK"]
        )
    ],
    dependencies: [
        // Voeg hier eventuele andere afhankelijkheden toe als dat nodig is
    ],
    targets: [
        .target(
            name: "MatrixSDK",
            path: "MatrixSDK",
            exclude: ["tests"]  // Zorg ervoor dat testbestanden niet worden opgenomen in de SPM-package.
        ),
        .testTarget(
            name: "MatrixSDKTests",
            dependencies: ["MatrixSDK"],
            path: "MatrixSDKTests"
        ),
    ]
)
