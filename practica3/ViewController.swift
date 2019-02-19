//
//  ViewController.swift
//  practica3
//
//  Created by alumno on 2/19/19.
//  Copyright © 2019 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let slider = UISlider()
    let backImage = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        //edit view image
        backImage.frame = view.frame
        //edit view
        view.backgroundColor = .white
        //edit slider
        slider.frame = CGRect(x: 50, y: 100, width: 250, height: 50)
        slider.addTarget(self, action: #selector(sliderDidChange), for: .valueChanged)
        //add views to root view
        view.addSubview(backImage)
        view.addSubview(slider)
    }
    
    //function for change valor
    @objc func sliderDidChange(_ sender:UISlider){
        let sliderValue = Float(slider.value)
        var imageReference:String = ""
        switch sliderValue {
        case 0...0.333:
            imageReference = "1"
        case 0.333...0.666:
            imageReference = "2"
        case 0.666...1:
            imageReference = "3"
        default:
            break
        }
        backImage.image = UIImage(named: imageReference)
    }
}

