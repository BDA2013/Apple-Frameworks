//
//  Button.swift
//  Apple-Frameworks
//
//  Created by Brandon Alexander on 11/6/23.
//

import SwiftUI

struct AFButton: View {
    
    var text: String
    
    var body: some View {
        
        Button {

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
    }
}

#Preview {
    AFButton(text: "Test Text")
}
