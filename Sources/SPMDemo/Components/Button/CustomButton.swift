//
//  CustomButton.swift
//  SPMDemo
//
//  Created by Khushal on 20/03/2026.
//

import AlertToast
import SwiftUI

public struct CustomButton: View {
    private let config: ButtonConfig
    private let action: () -> Void
    
    @Environment(\.theme) private var theme
    
    @State private var showToast = false

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
                showToast.toggle()
            }
        }) {
            content
                .frame(maxWidth: .infinity)
                .frame(height: config.size.height)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(theme.cornerRadius)
                .opacity(config.isDisabled ? 0.6 : 1)
                .padding(.horizontal)
        }
        .disabled(config.isDisabled)
        .toast(isPresenting: $showToast) {
            AlertToast(displayMode: .banner(.pop),
                       type: .regular,
                       title: "Button Tapped!")
        }
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
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
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
