//
//  ContentView.swift
//  LocalizationDemo
//
//  Created by Matthew Hanlon on 6/29/20.
//  Copyright © 2020 The Code Hub. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var stories: [Story] = Story.defaultStories()
    var layoutDirection: LayoutDirection = .leftToRight
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(NSLocalizedString("Bedtime Stories", comment: "Bedtime Stories"))
                .font(.largeTitle)
                .bold()
            Spacer()
            ForEach(stories, id: \.self) { story in
                HStack {
                    VStack(alignment: .leading) {
                        Text(story.title)
                            .font(.title)
                        if story.subtitle != nil {
                            Text(story.subtitle!)
                            .font(.caption)
                        }
                        ProgressView(progress:story.progress).frame(height: 10)
                    }
                    Spacer()
                    Text(story.emoji)
                        .font(.subheadline)
                    
                }
                .padding(15)
                .foregroundColor(.blue)
                .border(Color.black, width: 1)
                .cornerRadius(3)
            }
            Spacer()
        }
        .padding(5)
        .frame(maxWidth: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    // Uncomment the environment modifier below to see how
    // this view translates to a locale in which text is read
    // right-to-left
    static var previews: some View {
        ContentView()
            .environment(\.locale, Locale(identifier: "ar"))
            //.environment(\.layoutDirection, .rightToLeft)
    }
}
