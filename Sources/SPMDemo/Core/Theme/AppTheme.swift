//
//  AppTheme.swift
//  SPMDemo
//
//  Created by Khushal on 20/03/2026.
//

import SwiftUI

public struct AppTheme: Sendable {
    public let colors: AppColors
    public let typography: AppTypography
    public let cornerRadius: CGFloat
    
    public init(
        colors: AppColors,
        typography: AppTypography,
        cornerRadius: CGFloat = 12
    ) {
        self.colors = colors
        self.typography = typography
        self.cornerRadius = cornerRadius
    }
}
