//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user248010 on 2/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    var euro = 0.0
    var ttd = 0.0
    var jpy = 0.0
    var egp = 0.0
    var dollar = 0
    
    @IBOutlet weak var message: UILabel!
    
    
    @IBOutlet weak var usdText: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func euroConverter(_ sender: UISwitch) {
        if (sender.isOn)
        {
            euro = 0.927
        }
        else
        {
            euro = 0.0
        }
    }
    
    
    @IBAction func ttdConverter(_ sender: UISwitch) {
        if (sender.isOn)
        {
            ttd = 6.722
        }
        else
        {
            ttd = 0.0
        }
    }
    
    
    @IBAction func jpyConverter(_ sender: UISwitch) {
        if (sender.isOn)
        {
            jpy = 149.342
        }
        else
        {
            jpy = 0.0
        }
    }
    
    
    @IBAction func egpConverter(_ sender: UISwitch) {
        if (sender.isOn)
        {
            egp = 30.93
        }
        else
        {
            egp = 0.0
        }
    }
    
    
    @IBAction func toConvertAndNavigate(_ sender: UIButton) {
        let usd = USD(usDollarsStringIn: usdText.text!)
        
        dollar = usd.toInteger()
        if (dollar == -1)
        {
            message.text = "Invalid! Enter only integer numbers."
        }
        else
        {
            message.text = ""
            self.performSegue(withIdentifier: "convertSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "convertSegue")
        {
            let navigation = segue.destination as! NavigationViewController
            navigation.usd = dollar
            if (euro != 0.0)
            {
                navigation.eur = euro
            }
            if (ttd != 0.0)
            {
                navigation.ttd = ttd
            }
            if (jpy != 0.0)
            {
                navigation.jpy = jpy
            }
            if (egp != 0.0)
            {
                navigation.egp = egp
            }
        }
    }
}

