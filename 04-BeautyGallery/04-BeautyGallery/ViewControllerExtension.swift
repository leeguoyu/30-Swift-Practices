//
//  ViewControllerExtension.swift
//  04-BeautyGallery
//
//  Created by leeguoyu on 16/3/9.
//  Copyright © 2016年 leeguoyu. All rights reserved.
//

import UIKit


extension ViewController : UIPickerViewDataSource{
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return beauties.count
        
    }
}

extension ViewController : UIPickerViewDelegate{
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        
        return beauties[row] 
    }
}