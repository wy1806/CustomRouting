//
//  Binding+EXT.swift
//  ArchitectureBootcamp
//
//  Created by WangYu on 2026.07.08.
//

import SwiftUI

extension Binding where Value == Bool {
    
    @MainActor
    init<T>(ifNotNil value: Binding<T?>) {
        self.init {
            value.wrappedValue !=  nil
        } set: { newValue in
            if !newValue {
                value.wrappedValue = nil
            }
        }
    }
}
