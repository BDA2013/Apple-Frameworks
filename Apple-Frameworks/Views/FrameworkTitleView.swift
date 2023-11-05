//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Brandon Alexander on 11/5/23.
//

import SwiftUI

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
