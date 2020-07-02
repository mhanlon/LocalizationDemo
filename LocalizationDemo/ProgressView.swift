//
//  ProgressView.swift
//  LocalizationDemo
//
//  Created by Matthew Hanlon on 7/2/20.
//  Copyright © 2020 The Code Hub. All rights reserved.
//

import SwiftUI

struct ProgressView: View {
    // A value from 0.0 - 1.0
    @State var progress: Double = 0.6
    var progressedColor: Color = Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
    var defaultColor: Color = .yellow
    
    var body: some View {
        HStack {
            ForEach((1...10), id: \.self) { index in
                Rectangle().background(self.progressedColor, alignment: .leading)
                    .cornerRadius(3)
                    .foregroundColor((self.progress * 10) < Double(index) ? self.defaultColor : self.progressedColor)
            }
            
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
