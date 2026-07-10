//
//  SegueOption.swift
//  ArchitectureBootcamp
//
//  Created by WangYu on 2026.07.08.
//

public enum SegueOption {
    case push, sheet, fullScreenCover
    
    var shouldAddNewNavigationView: Bool {
        switch self {
        case .push:
            return false
        case .sheet, .fullScreenCover:
            return true
        }
    }
}
