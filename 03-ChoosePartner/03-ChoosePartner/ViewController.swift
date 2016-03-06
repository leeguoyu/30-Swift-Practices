//
//  ViewController.swift
//  03-ChoosePartner
//
//  Created by leeguoyu on 16/3/6.
//  Copyright © 2016年 leeguoyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderOption: UISegmentedControl!
    @IBOutlet weak var birthdayPicker: UIDatePicker!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var houseSwitcher: UISwitch!
    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var confirmButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        
    }

    @IBAction func heightDidChange(sender: AnyObject) {
        //身高的显示
        heightLabel.text = "\(String(Int(heightSlider.value)))厘米"
        
    }

    @IBAction func confirmButtonDidClick(sender: AnyObject) {
        
        //性别
        let genderText = genderOption.selectedSegmentIndex == 0 ? "男" : "女"
        
        //年龄
        let today = NSDate()
        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        let component = gregorian!.components(NSCalendarUnit.Year, fromDate: birthdayPicker.date, toDate: today, options: NSCalendarOptions(rawValue: 0))
        
        let age = component.year
        
        //是否有房
        let hasHouseText = houseSwitcher.on ? "有房" : "没房"
        
        //显示结果
        //记得要在 text 后面加 ！，不然会打出来 optional 的字眼在结果里
        resultTextView.text = "\(nameTextField.text!), \(age)岁, \(genderText), 身高\(heightLabel.text!), \(hasHouseText)"
        
    }
    
    //TextField 代理
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        //点击 下一项 收回键盘
        nameTextField.resignFirstResponder()
        return true
    }
}

