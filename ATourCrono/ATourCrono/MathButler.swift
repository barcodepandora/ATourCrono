//
//  MathButler.swift
//  ATourCrono
//
//  Created by Juan Manuel Moreno on 12/10/24.
//

import Foundation

class MathButler {
    
    static let shared = MathButler()
    
    func calculateAngleInDegrees(numberOfAngles: Int, numberOfAngle: Int) -> Double {
        return numberOfAngles > 0 ? Double(numberOfAngle) * 30 : 0
    }
}
