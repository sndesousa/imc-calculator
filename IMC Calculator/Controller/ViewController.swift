//
//  ViewController.swift
//  IMC Calculator
//
//  Created by Usuario on 28/2/24.
//  Copyright © 2024 casa. All rights reserved.
//

import UIKit

//MVVM

class ViewController: UIViewController {
    var model: CalculateIMC?//modelo
    let myContentView: FirstView = FirstView()//vista
    
    /*override func loadView() {
        self.view = firstViewData()
        
    }*/

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view.addSubview(myContentView)
        
        //faltan las constraints
       
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        //suceda cada vez que la pantalla se vaya a mostrar
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

