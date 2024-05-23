//
//  FirstView.swift
//  IMC Calculator
//
//  Created by Usuario on 29/2/24.
//  Copyright © 2024 casa. All rights reserved.
//

import Foundation
import UIKit

class FirstView: UIView {
    
    private var currentHeight: Double = 0.0//0.0 = valor por default para no hacerlo opcional
    private var currentWeigth: Double = 0.0
    
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
        numberHeight.text = "1.75"
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
        sliderH.value = 1.75
        sliderH.isContinuous = true
        sliderH.tintColor = UIColor.blue
        sliderH.addTarget(self, action: #selector(sliderHChange), for: .valueChanged)
        sliderH.translatesAutoresizingMaskIntoConstraints = false
        
        return sliderH
    }()
    
    
    //Asingo el valor del Slider a un text (textLabelHeightNumber)
    @objc func sliderHChange(sender: UISlider!){
        textLabelHeightNumber.text = String(format: "%.2f", sender.value)//actualizando la UI
        currentHeight = Double(sender.value)//guardas el valor actual indicado por el usuario
    }
 
 
    //WIDTH views
    private let textLabelWeight: UILabel = {
        let weight = UILabel()
        weight.text = "Width"
        weight.textAlignment = .center
        weight.font = UIFont(name: "Arial Rounded MT Bold"  , size: 14)
        weight.translatesAutoresizingMaskIntoConstraints = false
        weight.textColor = UIColor.black
        
        return weight
    }()
    
    private let textLabelWeightNumber: UILabel = {
        let numberWeight = UILabel()
        numberWeight.text = "100"
        numberWeight.textAlignment = .center
        numberWeight.font = UIFont(name: "Arial Rounded MT Bold"  , size: 14)
        numberWeight.translatesAutoresizingMaskIntoConstraints = false
        numberWeight.textColor = UIColor.black
        
        return numberWeight
    }()
    
    
    private let sliderWeight: UISlider = {
        let sliderW = UISlider(frame: CGRect(x: 50, y: 100, width: 300, height: 20))
        sliderW.minimumValue = 0
        sliderW.maximumValue = 200
        sliderW.value = 100
        sliderW.isContinuous = true
        sliderW.tintColor = UIColor.blue
        sliderW.addTarget(self, action: #selector(sliderWChange), for: .valueChanged)
        sliderW.translatesAutoresizingMaskIntoConstraints = false
        
        return sliderW
    }()
    
    //Asingo el valor del Slider a un text (textLabelWightNumber)
    @objc func sliderWChange(sender: UISlider!){
        textLabelWeightNumber.text = String(format: "%.2f", sender.value)
        currentWeigth = Double(sender.value)//guardas el peso
    }
    
    //Button "CALCULATE" view
    // cambiar de pantalla y calcular lo que quiero calcular
    private let buttonCalculate: UIButton = {
        let calculate = UIButton()
        calculate.setTitle("CALCULATE", for: .normal)
        calculate.setTitleColor(.black , for: .normal)
        calculate.tintColor = .blue
        calculate.addTarget(self, action: #selector(calculateButtonTapped), for: .touchUpInside)
        calculate.translatesAutoresizingMaskIntoConstraints = false
       
        return calculate
    }()
    
    @objc private func calculateButtonTapped() {
        /*guard let weightText = textLabelWeight.text, let heightText = textLabelHeight.text,
            let weight = Double(weightText), let height = Double(heightText) else {
               return
        }*/
        //calcular IMC
        let imcCalculator = CalculateIMC(weight: currentWeigth, height: currentHeight)
        
        
        //aca hace algo
    }
    /*
        
        
        //instancio en una constante el modelo creado
        let model = calculateIMC(weight: weight, height: height)
        let result = secondViewData(imcCalculate: calculateIMC)
        navigationController?.pushViewController(secondViewData, animated: true)
    }
    
    
    
    
     
      {
     guard let weightText = weightTextField.text, let heightText = heightTextField.text,
     let weight = Double(weightText), let height = Double(heightText) else {
     // Handle invalid input
     return
     }
     
     let bmiModel = BMIModel(weight: weight, height: height)
     let resultViewController = ResultViewController(bmiModel: bmiModel)
     navigationController?.pushViewController(resultViewController, animated: true)
     }
     }
     
    
    */
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    //Codigo necesario
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Creo funcion para tener un codigo mas limpio
    private func setup() {
        addSubviews()
        configureConstraints()
    }
    
    //Agrego las vistas
    private func addSubviews() {
        addSubview(textLabel)
        addSubview(sliderHeight)
        addSubview(textLabelHeight)
        addSubview(textLabelHeightNumber)
        addSubview(sliderWeight)
        addSubview(textLabelWeight)
        addSubview(textLabelWeightNumber)
        addSubview(buttonCalculate)

        
    }
    //Configuracion de constraints
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
            
            textLabelWeight.centerXAnchor.constraint(equalTo: layoutMarginsGuide.leftAnchor, constant: 50),
            textLabelWeight.centerYAnchor.constraint(equalTo: sliderHeight.bottomAnchor, constant: 50),
            textLabelWeight.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            textLabelWeightNumber.rightAnchor.constraint(equalTo: layoutMarginsGuide.rightAnchor, constant: -50),
            textLabelWeightNumber.centerYAnchor.constraint(equalTo: sliderHeight.bottomAnchor, constant: 50),
            
            sliderWeight.centerXAnchor.constraint(equalTo: centerXAnchor),
            sliderWeight.centerYAnchor.constraint(equalTo: textLabelWeight.bottomAnchor, constant: 20),
            sliderWeight.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            sliderWeight.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            
            buttonCalculate.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonCalculate.centerYAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor, constant: -20),
            
            ])
    }
    
    
}

/*struct FirstViewData {
    let weigth: Double
    let heigth: Double
}*/
