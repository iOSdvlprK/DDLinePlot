//
//  CosineTaylorPolynomial.swift
//  DDLinePlot
//
//  Created by joe on 2/8/25.
//

import SwiftUI
import Charts

struct CosineTaylorPolynomial: View {
    var body: some View {
        Chart {
            LinePlot(x: "x", y: "y") { x in
                cos(x)
            }
            .foregroundStyle(.green)
            
            LinePlot(x: "x", y: "y") { x in
                1
            }
            .foregroundStyle(.red)
            
            LinePlot(x: "x", y: "y") { x in
                1 - 0.5 * x * x
            }
            .foregroundStyle(.blue)
            
            LinePlot(x: "x", y: "y") { x in
                1 - 0.5 * x * x + (1/24)*x*x*x*x
            }
            .foregroundStyle(.blue)
        }
        .padding()
        .chartXScale(domain: -8...8)
        .chartYScale(domain: -8...8)
    }
}

#Preview {
    CosineTaylorPolynomial()
}
