//
//  FrameworkDescriptionView.swift
//  Apple-Frameworks
//
//  Created by Brandon Alexander on 11/6/23.
//

import SwiftUI

struct FrameworkDescriptionView: View {
//    var name: String
//    var image: String
//    var url: String
//    var description: String
    
    var framework: Framework
    
//    var name = Framework.MockData.sampleFramework.name
//    var image = Framework.MockData.sampleFramework.imageName
//    var url = Framework.MockData.sampleFramework.urlString
//    var description = Framework.MockData.sampleFramework.description
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            AFButton(text: "Learn More")
        }
        .padding()
        
    }
}

#Preview {
    FrameworkDescriptionView(framework: Framework.MockData.sampleFramework)
}
