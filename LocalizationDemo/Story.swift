//
//  Story.swift
//  LocalizationDemo
//
//  Created by Matthew Hanlon on 6/30/20.
//  Copyright © 2020 The Code Hub. All rights reserved.
//

import SwiftUI

public struct Story: Hashable, Identifiable {
    public var id = UUID()
    public let title: String
    public let subtitle: String?
    public let emoji: String
    public let body: String
    public var coverImage: UIImage?
    public var progress: Double = 0.0
}

public let testData = [
    Story(title: "Story 1", subtitle: "A story to get them ready for bed", emoji: "🥱", body: "...", coverImage: nil, progress: 1.0),
    Story(title: "Story 2", subtitle: "A sleepy little story", emoji: "😴", body: "...", coverImage: nil, progress: 0.8),
    Story(title: "Story 3", subtitle: "Not recommended for young children", emoji: "😱", body: "...", coverImage: nil, progress: 0.1),
    Story(title: "Story 4", subtitle: nil, emoji: "🥱", body: "...", coverImage: nil)
]
