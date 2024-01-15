//
//  BMI.swift
//  Blossom
//
//  Created by Dhurv Dugar on 19/04/23.
//

import Foundation
import UIKit

// Define a BMI struct with its values
struct BMI {
    let classification: WeightClass
    let value: Float
    let advice: String
    let symbol: String
    let color: UIColor
}

enum WeightClass {
    case underweight
    case healthy
    case overweight
    case obese
    case extremelyObese
    case unknown
}
