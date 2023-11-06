//
//  FrameworkDescriptionView.swift
//  Apple-Frameworks
//
//  Created by Brandon Alexander on 11/6/23.
//

import SwiftUI

struct FrameworkDetailView: View {
//    var name: String
//    var image: String
//    var url: String
//    var description: String
    
    var name = Framework.MockData.sampleFramework.name
    var image = Framework.MockData.sampleFramework.imageName
    var url = Framework.MockData.sampleFramework.urlString
    var description = Framework.MockData.sampleFramework.description
    
    var body: some View {
        
        
        VStack {
            Image(image)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
            Text(description)
            HStack {
                Text("For more info:")
                Link(destination: URL(string: url)!, label: {
                    Text("Tap Here")
                })
            }
            .padding()
        }
        .padding()
        
    }
}

#Preview {
    FrameworkDetailView()
}
