//
//  DefaultThemes.swift
//  SPMDemo
//
//  Created by Khushal on 20/03/2026.
//

import SwiftUI

public extension AppTheme {
    static let light = AppTheme(
        colors: AppColors(
            primary: .blue,
            secondary: .gray,
            background: .white,
            textPrimary: .black,
            textSecondary: .gray,
            error: .red
        ),
        typography: .default,
        cornerRadius: 12
    )
    
    static let dark = AppTheme(
        colors: AppColors(
            primary: .blue,
            secondary: .gray,
            background: .black,
            textPrimary: .white,
            textSecondary: .gray,
            error: .red
        ),
        typography: .default,
        cornerRadius: 12
    )
}
