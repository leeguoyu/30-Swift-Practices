//
//  ViewController.swift
//  02-ChineseHoroscope
//
//  Created by leeguoyu on 16/3/5.
//  Copyright © 2016年 leeguoyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var horoscopeImageView: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func confirmButtonDidClick(sender: AnyObject) {
        
        yearTextField.resignFirstResponder()
        
        if let year : Int = Int(yearTextField.text!){
            
            let imageNumber = (year - offset) % 12
            horoscopeImageView.image = UIImage(named: String(imageNumber))
            
        }
    }

}

