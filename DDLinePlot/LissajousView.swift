//
//  LissajousView.swift
//  DDLinePlot
//
//  Created by joe on 2/7/25.
//

import SwiftUI
import Charts

struct LissajousView: View {
    let A: Double
    let B: Double
    let a: Double
    let b: Double
    let delta: Double
    
    var body: some View {
        Chart {
            LinePlot(x: "x", y: "y", t: "t", domain: 0 ... .pi * 2) { t in
                (A * sin(a * t + delta), B * sin(b * t))
            }
            .foregroundStyle(.red)
        }
        .padding()
        .chartXScale(domain: -8...8)
        .chartYScale(domain: -8...8)
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
        .aspectRatio(1, contentMode: .fit)
    }
}

#Preview {
    LissajousView(A: 3, B: 3, a: 1, b: 4, delta: .pi / 4)
}
