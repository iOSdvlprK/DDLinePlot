//
//  RandomPlotView.swift
//  DDLinePlot
//
//  Created by joe on 2/6/25.
//

import SwiftUI
import Charts

struct RandomPlotView: View {
    let data: [Float] = stride(from: 0, to: 20, by: 0.1).map { _ in Float.random(in: 0...30) }
    var xyData: [(Int, Float)] {
        Array(data.enumerated())
    }
    
    var body: some View {
        Chart(xyData, id: \.0) { x, y in
            LinePlot(xyData, x: .value("x", x), y: .value("y", y))
        }
        .padding()
    }
}

#Preview {
    RandomPlotView()
}
