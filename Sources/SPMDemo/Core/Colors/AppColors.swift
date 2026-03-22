//
//  AppColors.swift
//  SPMDemo
//
//  Created by Khushal on 20/03/2026.
//

import SwiftUI

public struct AppColors: Sendable {
    public let primary: Color
    public let secondary: Color
    public let background: Color
    public let textPrimary: Color
    public let textSecondary: Color
    public let error: Color
    
    public init(
        primary: Color,
        secondary: Color,
        background: Color,
        textPrimary: Color,
        textSecondary: Color,
        error: Color
    ) {
        self.primary = primary
        self.secondary = secondary
        self.background = background
        self.textPrimary = textPrimary
        self.textSecondary = textSecondary
        self.error = error
    }
}
