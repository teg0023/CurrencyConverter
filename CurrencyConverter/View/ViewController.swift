//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user248010 on 2/12/24.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var message: UILabel!
    
    
    @IBOutlet weak var usdText: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let char = "23"
        for ch in char
        {
            let ascii = "\(String(describing: ch.asciiValue))"
            message.text = ascii
        }
    }

    
    
    @IBAction func euroConverter(_ sender: UISwitch) {
    }
    
    
    @IBAction func ttdConverter(_ sender: UISwitch) {
    }
    
    
    @IBAction func jpyConverter(_ sender: UISwitch) {
    }
    
    
    @IBAction func egpConverter(_ sender: UISwitch) {
    }
    
    
    @IBAction func toConvertAndNavigate(_ sender: UIButton) {
    }
}

