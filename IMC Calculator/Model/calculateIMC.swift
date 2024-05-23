//
//  calculateIMC.swift
//  IMC Calculator
//
//  Created by Usuario on 29/2/24.
//  Copyright © 2024 casa. All rights reserved.
//

import Foundation


//creo la estructura que necesito para realizar el calculo
struct CalculateIMC {
    
    var weight: Double
    var height: Double
    
    
    var imc: Double {
        return weight / (height * height)
    }
    
}


