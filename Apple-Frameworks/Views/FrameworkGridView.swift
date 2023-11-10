//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Brandon Alexander on 11/5/23.
//

import SwiftUI

struct FrameworkGridView: View {
    ///Data will be persisted whenever it's reloaded
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.colums, content: {
                    ForEach(Framework.MockData.frameworks) {
                        framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                print("Tapped on \(framework.name)")
                                viewModel.selectedFramework = framework
                            }
                    }
                })
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? Framework.MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        ///StackNavigationViewStyle() will override the split view on big screens like iPads
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FrameworkGridView()
}
