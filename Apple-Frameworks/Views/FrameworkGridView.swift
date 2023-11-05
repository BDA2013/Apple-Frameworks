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
        
        LazyVGrid(columns: colums, content: {
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
                .padding()
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
                .padding()
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
                .padding()
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
                .padding()
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
                .padding()
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
                .padding()
            
            
        })
        
    }
}

#Preview {
    FrameworkGridView()
}
