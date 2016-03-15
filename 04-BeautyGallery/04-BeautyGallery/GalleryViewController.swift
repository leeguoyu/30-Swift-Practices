//
//  GalleryViewController.swift
//  04-BeautyGallery
//
//  Created by leeguoyu on 16/3/9.
//  Copyright © 2016年 leeguoyu. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    var imageName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = imageName{
            
            beautyImage.image = UIImage(named: name)
            
            switch name{
            case "fanbingbing":
                navigationItem.title = "范冰冰"
                
            case "libingbing":
                navigationItem.title = "李冰冰"

            case "wangfei":
                navigationItem.title = "王菲"

            case "yangmi":
                navigationItem.title = "杨幂"

            case "zhouxun":
                navigationItem.title = "周迅"
                
            default:
                navigationItem.title = "女神"

            }
        }
        
    }
    
    @IBAction func shareButtonDidClick(sender: AnyObject) {
        
        let controller : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("玩女神相册，不是玩女神")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
}
