// swift-tools-version: 5.6

///
import PackageDescription

///
let package = Package(
    name: "ConvertViewToPNGDataModule",
    platforms: [.macOS(.v11)],
    products: [
        .library(
            name: "ConvertViewToPNGDataModule",
            targets: ["ConvertViewToPNGDataModule"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/ConvertNSViewToPNGDataModule",
            from: "0.1.0"
        )
    ],
    targets: [
        .target(
            name: "ConvertViewToPNGDataModule",
            dependencies: [
                
                ///
                "ConvertNSViewToPNGDataModule"
            ]
        ),
        .testTarget(
            name: "ConvertViewToPNGDataModule-tests",
            dependencies: ["ConvertViewToPNGDataModule"]),
    ]
)
