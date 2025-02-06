//
//  ContentView.swift
//  DDLinePlot
//
//  Created by joe on 2/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Random Plot", destination: RandomPlotView())
            }
            .navigationTitle("Lineplot")
        }
    }
}

#Preview {
    ContentView()
}
