//
//  FirstView.swift
//  IMC Calculator
//
//  Created by Usuario on 29/2/24.
//  Copyright © 2024 casa. All rights reserved.
//

import Foundation
import UIKit

class firstViewData: UIView {
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Calcular IMC"
        label.textAlignment = .center
        label.font = UIFont(name: "Arial Rounded MT Bold"  , size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
    
        return label
    }()
    
    private let uislider: UISlider = {
        let slider = UISlider(frame: CGRect(x: 50, y: 100, width: 300, height: 20))
        slider.minimumValue = 0
        slider.maximumValue = 150
        slider.value = 75
        slider.isContinuous = true
        slider.tintColor = UIColor.blue
        slider.translatesAutoresizingMaskIntoConstraints = false
        
        return slider
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
        addSubview(textLabel)
        addSubview(uislider)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: topAnchor, constant: 50),
            
            uislider.centerXAnchor.constraint(equalTo: centerXAnchor),
            uislider.centerYAnchor.constraint(equalTo:centerYAnchor),
            
            
            
            
            ])
    }
    
    
}
