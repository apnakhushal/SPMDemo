//
//  DSButtonSize.swift
//  SPMDemo
//
//  Created by Khushal on 20/03/2026.
//

import SwiftUI

public enum DSButtonSize {
    case small
    case medium
    case large
    
    var height: CGFloat {
        switch self {
        case .small: return 36
        case .medium: return 44
        case .large: return 52
        }
    }
    
    var font: Font {
        switch self {
        case .small: return .system(size: 14, weight: .medium)
        case .medium: return .system(size: 16, weight: .semibold)
        case .large: return .system(size: 18, weight: .bold)
        }
    }
}
