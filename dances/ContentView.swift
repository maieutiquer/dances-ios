//
//  ContentView.swift
//  dances
//
//  Created by personal on 28.12.23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        DancesView()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
