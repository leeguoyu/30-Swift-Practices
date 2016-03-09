//
//  ViewController.swift
//  04-BeautyGallery
//
//  Created by leeguoyu on 16/3/9.
//  Copyright © 2016年 leeguoyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅", ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToGallery"{
            
            let index = beautyPicker.selectedRowInComponent(0)
            
            var imageName : String?
            
            switch index{
                
            case 0:
                imageName = "fanbingbing"
                
            case 1:
                imageName = "libingbing"

            case 2:
                imageName = "wangfei"

            case 3:
                imageName = "yangmi"

            case 4:
                imageName = "zhouxun"

            default:
                imageName = nil
            }
            
            let vc = segue.destinationViewController as! GalleryViewController
            
            vc.imageName = imageName
        }


    }
    
    @IBAction func close(segue: UIStoryboardSegue){
        
    }
}
