//
//  CustomButton.swift
//  SPMDemo
//
//  Created by Khushal on 20/03/2026.
//

import SwiftUI

public struct CustomButton: View {
    private let config: ButtonConfig
    private let action: () -> Void
    
    @Environment(\.theme) private var theme
    
    public init(
        config: ButtonConfig,
        action: @escaping () -> Void
    ) {
        self.config = config
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            if !config.isDisabled && !config.isLoading {
                action()
            }
        }) {
            content
                .frame(maxWidth: .infinity)
                .frame(height: config.size.height)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(theme.cornerRadius)
                .opacity(config.isDisabled ? 0.6 : 1)
        }
        .disabled(config.isDisabled)
    }
}

private extension CustomButton {
    @ViewBuilder
    var content: some View {
        if config.isLoading {
            ProgressView()
                .tint(foregroundColor)
        } else {
            HStack(spacing: 8) {
                if let icon = config.icon {
                    icon
                }
                
                Text(config.primaryTitle)
                    .font(config.size.font)
            }
        }
    }
    
    var backgroundColor: Color {
        switch config.style {
        case .primary:
            return theme.colors.primary
        case .secondary:
            return theme.colors.secondary.opacity(0.2)
        case .ghost:
            return Color.clear
        case .destructive:
            return theme.colors.error
        }
    }
    
    var foregroundColor: Color {
        switch config.style {
        case .primary:
            return .white
        case .secondary:
            return theme.colors.primary
        case .ghost:
            return theme.colors.primary
        case .destructive:
            return .white
        }
    }
}
