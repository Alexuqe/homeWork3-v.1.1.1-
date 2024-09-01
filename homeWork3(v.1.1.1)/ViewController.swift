//
//  ViewController.swift
//  homeWork3(v.1.1.1)
//
//  Created by Sasha on 1.09.24.
//

import UIKit

final class ViewController: UIViewController {
    
    
    @IBOutlet weak var viewColor: UIView!
    
    
    @IBOutlet weak var redShade: UILabel!
    @IBOutlet weak var valueRedShade: UILabel!
    @IBOutlet weak var sliderRedShade: UISlider!
    
    @IBOutlet weak var greenShade: UILabel!
    @IBOutlet weak var valueGreenShade: UILabel!
    @IBOutlet weak var sliderGreenShade: UISlider!
    
    @IBOutlet weak var blueShade: UILabel!
    @IBOutlet weak var valueBlueShade: UILabel!
    @IBOutlet weak var sliderBlueShade: UISlider!
    
    private var redColor: CGFloat = 0.0
    private var greenColor: CGFloat = 0.0
    private var blueColor: CGFloat = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 30
        viewColor.backgroundColor = .gray
        
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        
        redSliderAction()
        greenSliderAction()
        blueSliderAction()
        
        colorDisplayView()
        
        redShade.text = "Red:"
        greenShade.text = "Green:"
        blueShade.text = "Blue:"
    
    }
    
    private func colorDisplayView() {
        viewColor.backgroundColor = UIColor.init(
            red: redColor,
            green: greenColor,
            blue: blueColor,
            alpha: 1.0
        )
    }
    
    
    @IBAction func redSliderAction() {
        valueRedShade.text = String(format: "%.2f", sliderRedShade.value)
        redColor = CGFloat(sliderRedShade.value)
        colorDisplayView()
    }
    
    @IBAction func greenSliderAction() {
        valueGreenShade.text = String(format: "%.2f", sliderGreenShade.value)
        greenColor = CGFloat(sliderGreenShade.value)
        colorDisplayView()
    }
    
    @IBAction func blueSliderAction() {
        valueBlueShade.text = String(format: "%.2f", sliderBlueShade.value)
        blueColor = CGFloat(sliderBlueShade.value)
        colorDisplayView()
    }
    
    
    private func setupRedSlider() {
        sliderRedShade.minimumValue = 0.0
        sliderRedShade.maximumValue = 1.0
        sliderRedShade.value = 0.0
        
        sliderRedShade.minimumTrackTintColor = .red
        sliderRedShade.maximumTrackTintColor = .systemFill
        
    }
    
    private func setupGreenSlider() {
        sliderGreenShade.minimumValue = 0.0
        sliderGreenShade.maximumValue = 1.0
        sliderGreenShade.value = 0.0
        
        sliderGreenShade.minimumTrackTintColor = .green
        sliderGreenShade.maximumTrackTintColor = .systemFill
    }
    
    private func setupBlueSlider() {
        sliderBlueShade.minimumValue = 0.0
        sliderBlueShade.maximumValue = 1.0
        sliderBlueShade.value = 0.0
        
        sliderBlueShade.minimumTrackTintColor = .blue
        sliderBlueShade.maximumTrackTintColor = .systemFill
    }
    
    
}

