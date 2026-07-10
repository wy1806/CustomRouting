//
//  NavigationStackIfNeeded.swift
//  ArchitectureBootcamp
//
//  Created by WangYu on 2026.07.08.
//

import SwiftUI

struct NavigationStackIfNeeded<Content: View>: View {
    
    @Binding var path: [AnyDestination]
    var addNavigationView: Bool
    @ViewBuilder var content: Content
    
    var body: some View {
        if addNavigationView {
            NavigationStack(path: $path) {
                content
                    .navigationDestination(for: AnyDestination.self) { value in
                        value.destination
                    }
            }
        } else {
            content
        }
    }
}
