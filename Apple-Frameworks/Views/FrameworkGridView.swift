//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Brandon Alexander on 11/5/23.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        let colums: [GridItem] = [GridItem(.flexible()),
                                  GridItem(.flexible()),
                                  GridItem(.flexible())]
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colums, content: {
                    ForEach(Framework.MockData.frameworks) {
                        framework in
                        FrameworkTitleView(framework: framework)
                    }
                })
            }
            .navigationTitle("🍎 Frameworks")
        }
    }
}

#Preview {
    FrameworkGridView()
}
