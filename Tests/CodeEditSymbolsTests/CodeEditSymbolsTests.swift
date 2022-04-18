import XCTest
import SwiftUI
import SnapshotTesting
@testable import CodeEditSymbols

final class CodeEditSymbolsTests: XCTestCase {

    // MARK: - NSImage Tests

    // MARK: VAULT

    func testCreateNSImageVault() {
        let image = NSImage.symbol(named: "vault")
        let view = NSImageView(image: image)
        assertSnapshot(matching: view, as: .image)
    }

    func testCreateNSImageVaultFill() {
        let image = NSImage.symbol(named: "vault.fill")
        let view = NSImageView(image: image)
        assertSnapshot(matching: view, as: .image)
    }

    // MARK: COMMIT

    func testCreateNSImageCommit() {
        let image = NSImage.symbol(named: "commit")
        let view = NSImageView(image: image)
        assertSnapshot(matching: view, as: .image)
    }

    // MARK: CHECKOUT

    func testCreateNSImageCheckout() {
        let image = Image(symbol: "checkout")
        let view: NSView = NSHostingController(rootView: image).view
        assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
    }

    // MARK: - Image Tests

    // MARK: VAULT

    func testCreateImageVault() {
        let image = Image(symbol: "vault")
        let view: NSView = NSHostingController(rootView: image).view
        assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
    }

    func testCreateImageVaultFill() {
        let image = Image(symbol: "vault.fill")
        let view: NSView = NSHostingController(rootView: image).view
        assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
    }

    // MARK: COMMIT

    func testCreateImageCommit() {
        let image = Image(symbol: "commit")
        let view: NSView = NSHostingController(rootView: image).view
        assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
    }

    // MARK: CHECKOUT

    func testCreateImageCheckout() {
        let image = Image(symbol: "checkout")
        let view: NSView = NSHostingController(rootView: image).view
        assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
    }
}
