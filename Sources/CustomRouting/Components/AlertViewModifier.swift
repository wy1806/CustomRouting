//
//  AlertViewModifier.swift
//  ArchitectureBootcamp
//
//  Created by WangYu on 2026.07.08.
//

import SwiftUI

extension View {
    
    @ViewBuilder
    func showCustomAlert(type: AlertType = .alert, alert: Binding<AnyAppAlert?>) -> some View {
        
        switch type {
        case .alert:
            self
                .alert(alert.wrappedValue?.title ?? "", isPresented: Binding(ifNotNil: alert)) {
                    alert.wrappedValue?.buttons()
                } message: {
                    if let subtitle = alert.wrappedValue?.subtitle {
                        Text(subtitle)
                            .multilineTextAlignment(.center)
                    }
                    
                }
        case .confirmationDialog:
            self
                .confirmationDialog(alert.wrappedValue?.title ?? "", isPresented: Binding(ifNotNil: alert)) {
                    alert.wrappedValue?.buttons()
                } message: {
                    if let subtitle = alert.wrappedValue?.subtitle {
                        Text(subtitle)
                    }
                }
        }
    }
}
