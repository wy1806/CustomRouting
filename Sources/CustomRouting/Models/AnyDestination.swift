//
//  AnyDestination.swift
//  ArchitectureBootcamp
//
//  Created by WangYu on 2026.07.08.
//

import SwiftUI

public struct AnyDestination: Hashable, Equatable {
    let id = UUID().uuidString // 每个 destination 都有一个随机id
    var destination: AnyView
    
    public init<T: View>(destination: T) {
        self.destination = AnyView(destination)
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id) // 每个 destination 都有一个随机哈希值（由 id 决定）
    }
    
    public static func == (lhs: AnyDestination, rhs: AnyDestination) -> Bool {
        lhs.hashValue == rhs.hashValue // 每个 destination 都不相同
    }
}
