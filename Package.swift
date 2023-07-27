// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "swift-custom-dump",
  platforms: [
    .iOS(.v11),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "CustomDump",
      targets: ["CustomDump"]
    )
  ],
  dependencies: [
    .package(url: "git@github.com:matheus-air/xctest-dynamic-overlay.git", branch: "ios-11-compatibility"),
  ],
  targets: [
    .target(
      name: "CustomDump",
      dependencies: [
        .product(name: "XCTestDynamicOverlay", package: "xctest-dynamic-overlay")
      ]
    ),
    .testTarget(
      name: "CustomDumpTests",
      dependencies: [
        "CustomDump"
      ]
    ),
  ]
)
