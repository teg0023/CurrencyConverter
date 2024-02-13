//
//  NavigationViewController.swift
//  CurrencyConverter
//
//  Created by user248010 on 2/13/24.
//

import UIKit

class NavigationViewController: UIViewController {

    @IBOutlet weak var usdLabel: UILabel!
    
    @IBOutlet weak var euroLabel: UILabel!
    
    @IBOutlet weak var ttdLabel: UILabel!
    
    @IBOutlet weak var jpyLabel: UILabel!
    
    @IBOutlet weak var egpLabel: UILabel!
    
    var usd = 0
    var eur = 0.0
    var ttd = 0.0
    var jpy = 0.0
    var egp = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usdLabel.text = "$\(usd)"
        
        if (eur != 0.0)
        {
            euroLabel.text = "EUR: \(Double(usd) * eur)"
        }
        else
        {
            euroLabel.text = ""
        }
        
        if (ttd != 0.0)
        {
            ttdLabel.text = "TTD: \(Double(usd) * ttd)"
        }
        else
        {
            ttdLabel.text = ""
        }
        
        if (jpy != 0.0)
        {
            jpyLabel.text = "JPY: \(Double(usd) * jpy)"
        }
        else
        {
            jpyLabel.text = ""
        }

        if (egp != 0.0)
        {
            egpLabel.text = "EGP: \(Double(usd) * egp)"
        }
        else
        {
            egpLabel.text = ""
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
