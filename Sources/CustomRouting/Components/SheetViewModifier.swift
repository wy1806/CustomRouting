//
//  SheetViewModifier.swift
//  ArchitectureBootcamp
//
//  Created by WangYu on 2026.07.08.
//

import SwiftUI

//  Sheet, FullScreenCover 有自己的环境 其本身的NavigationStack不能Push到其他View 如果要push 需要下一个View重新创建一个NavigationStack

extension View {
    
    func sheetViewModifier(screen: Binding<AnyDestination?>) -> some View {
        self
            .sheet(isPresented: Binding(ifNotNil: screen)) {
                ZStack {
                    if let screen = screen.wrappedValue {
                        screen.destination
                    }
                }
            }
    }
    
    func fullScreenCoverViewModifier(screen: Binding<AnyDestination?>) -> some View {
        self
            .fullScreenCover(isPresented: Binding(ifNotNil: screen)) {
                ZStack {
                    if let screen = screen.wrappedValue {
                        screen.destination
                    }
                }
            }
    }
}
