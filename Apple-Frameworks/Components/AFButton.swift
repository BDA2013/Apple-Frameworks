//
//  Button.swift
//  Apple-Frameworks
//
//  Created by Brandon Alexander on 11/6/23.
//

import SwiftUI

struct AFButton: View {
    
    var text: String
    var framework: Framework
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        Button {
            isShowingSafariView = true
        } label: {
            Text(text)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding()
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}


#Preview {
    AFButton(text: "Test Link", framework: Framework.MockData.sampleFramework)
}
