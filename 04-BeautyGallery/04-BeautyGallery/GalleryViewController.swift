//
//  GalleryViewController.swift
//  04-BeautyGallery
//
//  Created by leeguoyu on 16/3/9.
//  Copyright © 2016年 leeguoyu. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    var imageName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if imageName != nil{
            
            beautyImage.image = UIImage(named: imageName!)
        }
        
    }
    
}
