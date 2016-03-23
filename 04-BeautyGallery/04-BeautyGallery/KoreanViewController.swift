//
//  KoreanViewController.swift
//  04-BeautyGallery
//
//  Created by leeguoyu on 16/3/24.
//  Copyright © 2016年 leeguoyu. All rights reserved.
//

import UIKit
import Social

class KoreanViewContoller : UIViewController{
    
    @IBOutlet weak var koreanImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func facebookButtonDidClick(sender: AnyObject) {
        
        let controller : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("分享到Facebook")
        controller.addImage(koreanImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
        
    }
    
    @IBAction func twitterButtonDidClick(sender: AnyObject) {
        
        let controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("分享到 Twitter")
        controller.addImage(koreanImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func weiboButtonDidClick(sender: AnyObject) {
        
//        let controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
//        controller.setInitialText("分享到微博")
//        controller.addImage(koreanImage.image)
//        self.presentViewController(controller, animated: true, completion: nil)
    }
}