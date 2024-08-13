// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "RichTextRow",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "RichTextRow", targets: ["RichTextRow"])
    ],
    dependencies: [
        .package(url: "https://github.com/xmartlabs/Eureka.git", from: "5.4.0")
    ],
    targets: [
        .target(
            name: "RichTextRow",
            dependencies: ["Eureka"],
            path: "Sources",
            resources: [
                .copy("Resources/RichTextEditor.html"),
                .copy("Resources/RichTextEditor.js")
            ]
        ),
        .testTarget(
            name: "RichTextRowTests",
            dependencies: ["RichTextRow"],
            path: "RichTextRowTests"
        )
    ]
)
