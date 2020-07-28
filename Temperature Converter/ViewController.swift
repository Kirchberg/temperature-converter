//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Kirill Kostarev on 27.07.2020.
//  Copyright © 2020 Kostarev Kirill Pavlovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sliderTemp: UISlider! {
        didSet {
            sliderTemp.minimumValue = -120
            sliderTemp.maximumValue = 120
            sliderTemp.value = 0
        }
    }
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBAction func changeTempSlider(_ sender: UISlider) {
        let celsiusExp: Int = Int(round(sender.value))
        let fahrenheitExp: Int  = Int(round(10 * (sender.value * 9/5 + 32)) / 10)
        celsiusLabel.text = String("\(celsiusExp)°C")
        fahrenheitLabel.text = String("\(fahrenheitExp)°F")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
    }
}
