//
// CodeEditSymbols.swift
//
// Created by Lukas Pistrol on 18.04.22.
//

import SwiftUI

public extension Image {

    init(symbol: String) {
        self.init(symbol, bundle: Bundle.module)
    }

}


public extension NSImage {

    static func symbol(named: String) -> NSImage {
        Bundle.module.image(forResource: named) ?? .init()
    }

}
