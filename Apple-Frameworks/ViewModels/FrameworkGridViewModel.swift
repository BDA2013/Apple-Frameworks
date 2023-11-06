//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Brandon Alexander on 11/6/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
