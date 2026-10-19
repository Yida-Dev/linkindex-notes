// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "LinkIndexNotes",
    platforms: [.macOS(.v12)],
    products: [
        .library(name: "LinkIndexNotes", targets: ["LinkIndexNotes"])
    ],
    targets: [
        .target(name: "LinkIndexNotes", path: "Sources/LinkIndexNotes")
    ]
)
