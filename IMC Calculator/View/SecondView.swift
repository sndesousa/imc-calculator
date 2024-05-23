//
//  SecondView.swift
//  IMC Calculator
//
//  Created by Usuario on 25/3/24.
//  Copyright © 2024 casa. All rights reserved.
//

import Foundation
import UIKit

class IMCInfoView: UIView {
    
    //instancio el modelo
    private let imcCalculate: CalculateIMC = CalculateIMC(weight: 120.0, height: 2.0)
    
    private let textTitleResult: UILabel = {
        let titleResult = UILabel()
        titleResult.text = "RESULT"
        titleResult.textAlignment = .center
        titleResult.font = UIFont(name: "Arial Rounded MT Bold"  , size: 22)
        titleResult.translatesAutoresizingMaskIntoConstraints = false
        titleResult.textColor = UIColor.blue
        
        return titleResult
    
    
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubviews()
        configureConstraints()
    }
    
    
    private func addSubviews() {
        addSubview(textTitleResult)
        
        
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            textTitleResult.leadingAnchor.constraint(equalTo: leadingAnchor),
            textTitleResult.trailingAnchor.constraint(equalTo: trailingAnchor),
            textTitleResult.centerXAnchor.constraint(equalTo: centerXAnchor),
            textTitleResult.centerYAnchor.constraint(equalTo: topAnchor, constant: 50),
           
            
            ])
    }
    
    
    
    
}
