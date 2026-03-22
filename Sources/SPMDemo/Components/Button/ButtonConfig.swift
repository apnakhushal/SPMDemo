//
//  ButtonConfig.swift
//  SPMDemo
//
//  Created by Khushal on 20/03/2026.
//

import SwiftUI

public struct ButtonConfig {
    public let primaryTitle: String
    public let style: DSButtonStyle
    public let size: DSButtonSize
    public let isLoading: Bool
    public let isDisabled: Bool
    public let icon: Image?
    
    public init(
        primaryTitle: String,
        style: DSButtonStyle = .primary,
        size: DSButtonSize = .medium,
        isLoading: Bool = false,
        isDisabled: Bool = false,
        icon: Image? = Image("pressButton", bundle: .myPackage)
    ) {
        self.primaryTitle = primaryTitle
        self.style = style
        self.size = size
        self.isLoading = isLoading
        self.isDisabled = isDisabled
        self.icon = icon
    }
}

extension Bundle {
    /// Expose the internal .module publicly for use in default arguments
    public static let myPackage: Bundle = .module
}
