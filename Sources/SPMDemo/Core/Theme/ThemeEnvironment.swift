//
//  ThemeEnvironment.swift
//  SPMDemo
//
//  Created by Khushal on 20/03/2026.
//

import SwiftUI

private struct ThemeKey: EnvironmentKey {
    static let defaultValue: AppTheme = .light
}

public extension EnvironmentValues {
    var theme: AppTheme {
        get { self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}
