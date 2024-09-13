//
//  CounterTCAApp.swift
//  CounterTCA
//
//  Created by 여나경 on 9/13/24.
//

import ComposableArchitecture
import SwiftUI

@main
struct CounterTCAApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
      CounterFeature()
        ._printChanges()
    }
    
    var body: some Scene {
      WindowGroup {
        CounterView(store: CounterTCAApp.store)
      }
    }
}
