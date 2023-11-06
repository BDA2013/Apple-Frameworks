//
//  FrameworkDescriptionView.swift
//  Apple-Frameworks
//
//  Created by Brandon Alexander on 11/6/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
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
                
            
            Spacer()
            AFButton(text: "Learn More", framework: framework)
        }
        .padding()
        
    }
}

#Preview {
    FrameworkDetailView(framework: Framework.MockData.sampleFramework, isShowingDetailView: .constant(false))
}
