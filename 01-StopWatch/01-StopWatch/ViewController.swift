//
//  ViewController.swift
//  01-StopWatch
//
//  Created by leeguoyu on 16/2/29.
//  Copyright © 2016年 leeguoyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    var counter = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = String(counter)
        
    }



}

