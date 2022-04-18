import XCTest
import SwiftUI
import SnapshotTesting
@testable import CodeEditSymbols

final class CodeEditSymbolsTests: XCTestCase {

    // MARK: - NSImage Tests

    // MARK: VAULT

    private let record: Bool = false

    func testCreateNSImageVault() {
        let image = NSImage.vault
        let view = NSImageView(image: image)
        assertSnapshot(matching: view, as: .image, record: record)
    }

    func testCreateNSImageVaultFill() {
        let image = NSImage.vault_fill
        let view = NSImageView(image: image)
        assertSnapshot(matching: view, as: .image, record: record)
    }

    // MARK: COMMIT

    func testCreateNSImageCommit() {
        let image = NSImage.commit
        let view = NSImageView(image: image)
        assertSnapshot(matching: view, as: .image, record: record)
    }

    // MARK: CHECKOUT

    func testCreateNSImageCheckout() {
        let image = NSImage.checkout
        let view: NSView = NSImageView(image: image)
        assertSnapshot(matching: view, as: .image, record: record)
    }

    // MARK: - Image Tests

    // MARK: VAULT

    func testCreateImageVault() {
        let image = Image.vault
        let view: NSView = NSHostingController(rootView: image).view
        assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize), record: record)
    }

    func testCreateImageVaultFill() {
        let image = Image.vault_fill
        let view: NSView = NSHostingController(rootView: image).view
        assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize), record: record)
    }

    // MARK: COMMIT

    func testCreateImageCommit() {
        let image = Image.commit
        let view: NSView = NSHostingController(rootView: image).view
        assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize), record: record)
    }

    // MARK: CHECKOUT

    func testCreateImageCheckout() {
        let image = Image.checkout
        let view: NSView = NSHostingController(rootView: image).view
        assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize), record: record)
    }
}
