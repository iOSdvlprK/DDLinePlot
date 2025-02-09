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
                taylorCosine(x: x, n: 0)
            }
            .foregroundStyle(.green)
        }
        .padding()
        .chartXScale(domain: -8...8)
        .chartYScale(domain: -8...8)
    }
}

func taylorCosine(x: Double, n: Double) -> Double {
    var result = 0.0
    var sign = 1.0
    var xPower = 1.0
    let xSquare = x * x
    var evenFactorial = 1.0
    
    for k in 0...(Int(n+1)-1)/2 {
        result += sign * xPower / evenFactorial
        
        sign *= -1
        xPower *= xSquare
        evenFactorial *= Double((2*k+1) * (2*k+2))
    }
    
    return result
}

#Preview {
    CosineTaylorPolynomial()
}
