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
                
                NavigationLink("Lissajous Curve", destination: LissajousView(A: 3, B: 3, a: 1, b: 4, delta: .pi / 4))
                
                NavigationLink("Cosine and Taylor Polynomial", destination: CosineTaylorPolynomial())
            }
            .navigationTitle("Line Plot")
        }
    }
}

#Preview {
    ContentView()
}
