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
    
    //TITLE view
    private let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Calcular IMC"
        label.textAlignment = .center
        label.font = UIFont(name: "Arial Rounded MT Bold"  , size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.green
    
        return label
    }()
    
    //HEIGHT views
    private let textLabelHeight: UILabel = {
        let height = UILabel()
        height.text = "Height"
        height.textAlignment = .center
        height.font = UIFont(name: "Arial Rounded MT Bold"  , size: 14)
        height.translatesAutoresizingMaskIntoConstraints = false
        height.textColor = UIColor.black
        
        return height
    }()
    
    private let textLabelHeightNumber: UILabel = {
        let numberHeight = UILabel()
        numberHeight.text = "1.5M"
        numberHeight.textAlignment = .center
        numberHeight.font = UIFont(name: "Arial Rounded MT Bold"  , size: 14)
        numberHeight.translatesAutoresizingMaskIntoConstraints = false
        numberHeight.textColor = UIColor.black
        
        return numberHeight
    }()
    

    private let sliderHeight: UISlider = {
        let sliderH = UISlider(frame: CGRect(x: 50, y: 100, width: 300, height: 20))
        sliderH.minimumValue = 1.0
        sliderH.maximumValue = 2.5
        sliderH.value = 1.25
        sliderH.isContinuous = true
        sliderH.tintColor = UIColor.blue
        sliderH.translatesAutoresizingMaskIntoConstraints = false
        
        return sliderH
    }()
 
 
    //WIDTH views
    private let textLabelWidth: UILabel = {
        let width = UILabel()
        width.text = "Width"
        width.textAlignment = .center
        width.font = UIFont(name: "Arial Rounded MT Bold"  , size: 14)
        width.translatesAutoresizingMaskIntoConstraints = false
        width.textColor = UIColor.black
        
        return width
    }()
    
    private let textLabelWidthNumber: UILabel = {
        let numberWidth = UILabel()
        numberWidth.text = "100"
        numberWidth.textAlignment = .center
        numberWidth.font = UIFont(name: "Arial Rounded MT Bold"  , size: 14)
        numberWidth.translatesAutoresizingMaskIntoConstraints = false
        numberWidth.textColor = UIColor.black
        
        return numberWidth
    }()
    
    
    private let sliderWidth: UISlider = {
        let sliderW = UISlider(frame: CGRect(x: 50, y: 100, width: 300, height: 20))
        sliderW.minimumValue = 0
        sliderW.maximumValue = 200
        sliderW.value = 100
        sliderW.isContinuous = true
        sliderW.tintColor = UIColor.blue
        sliderW.translatesAutoresizingMaskIntoConstraints = false
        
        return sliderW
    }()
    
    private let buttonCalculate: UIButton = {
        let calculate = UIButton()
        calculate.setTitle("CALCULATE", for: .normal)
        calculate.setTitleColor(.black , for: .normal)
        calculate.tintColor = .blue
        calculate.translatesAutoresizingMaskIntoConstraints = false
       
        return calculate
    }()
    
  /*  @objc func sliderValueChanged(sender: UISlider) {
        textLabelHeightNumber.text = String(format: "%.2f", sliderHe.value)
    }
    
    */
    
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
        addSubview(sliderHeight)
        addSubview(textLabelHeight)
        addSubview(textLabelHeightNumber)
        addSubview(sliderWidth)
        addSubview(textLabelWidth)
        addSubview(textLabelWidthNumber)
        addSubview(buttonCalculate)

        
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: topAnchor, constant: 50),
            
            textLabelHeight.centerXAnchor.constraint(equalTo: layoutMarginsGuide.leftAnchor, constant: 50),
            textLabelHeight.centerYAnchor.constraint(equalTo: centerYAnchor),
            textLabelHeight.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            textLabelHeightNumber.rightAnchor.constraint(equalTo: layoutMarginsGuide.rightAnchor, constant: -50),
            textLabelHeightNumber.centerYAnchor.constraint(equalTo: centerYAnchor),

            sliderHeight.centerXAnchor.constraint(equalTo: centerXAnchor),
            sliderHeight.centerYAnchor.constraint(equalTo: textLabelHeight.bottomAnchor, constant: 20),
            sliderHeight.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            sliderHeight.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            
            textLabelWidth.centerXAnchor.constraint(equalTo: layoutMarginsGuide.leftAnchor, constant: 50),
            textLabelWidth.centerYAnchor.constraint(equalTo: sliderHeight.bottomAnchor, constant: 50),
            textLabelWidth.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            textLabelWidthNumber.rightAnchor.constraint(equalTo: layoutMarginsGuide.rightAnchor, constant: -50),
            textLabelWidthNumber.centerYAnchor.constraint(equalTo: sliderHeight.bottomAnchor, constant: 50),
            
            sliderWidth.centerXAnchor.constraint(equalTo: centerXAnchor),
            sliderWidth.centerYAnchor.constraint(equalTo: textLabelWidth.bottomAnchor, constant: 20),
            sliderWidth.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            sliderWidth.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            
            buttonCalculate.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonCalculate.centerYAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor, constant: -20),
            
            
            
            
            
            
            
            
            ])
    }
    
    
}
