//
//  ThemeManager.swift
//  SPMDemo
//
//  Created by Khushal on 20/03/2026.
//

import SwiftUI

public final class ThemeManager: ObservableObject {
    @MainActor public static let shared = ThemeManager()
    
    @Published public private(set) var currentTheme: AppTheme = .light
    
    private init() {}
    
    public func setTheme(_ theme: AppTheme) {
        currentTheme = theme
    }
}
