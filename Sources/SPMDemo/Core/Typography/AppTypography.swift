//
//  AppTypography.swift
//  SPMDemo
//
//  Created by Khushal on 20/03/2026.
//

import SwiftUI

public struct AppTypography: Sendable {
    public let largeTitle: Font
    public let title: Font
    public let body: Font
    public let caption: Font
    
    public init(
        largeTitle: Font,
        title: Font,
        body: Font,
        caption: Font
    ) {
        self.largeTitle = largeTitle
        self.title = title
        self.body = body
        self.caption = caption
    }
}

public extension AppTypography {
    static let `default` = AppTypography(
        largeTitle: .system(size: 32, weight: .bold),
        title: .system(size: 24, weight: .semibold),
        body: .system(size: 16, weight: .regular),
        caption: .system(size: 12, weight: .light)
    )
}
