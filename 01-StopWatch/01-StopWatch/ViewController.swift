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
    @IBOutlet weak var resetButton: UIButton!
    
    var counter = 0.0
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseButton.enabled = false
        resetButton.enabled = false
        timeLabel.text = String(counter)
        
    }
    
    //点击play按钮
    @IBAction func playButtonDidClick(sender: AnyObject){
        
        playButton.enabled = false
        pauseButton.enabled = true
        resetButton.enabled = true
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("updateTimer"), userInfo: nil, repeats: true)
        
    }
    
    func updateTimer(){
        
        counter += 0.1
        //这里一定要限制counter的小数位，不然会变超长
        timeLabel.text = String(format:"%.1f", counter)
        
    }
    //点击pause按钮
    @IBAction func pauseButtonDidClick(sender: AnyObject){
        playButton.enabled = true
        pauseButton.enabled = false
        timer.invalidate()
    }
    //点击reset按钮
    @IBAction func resetButtonDidClick(sender: AnyObject){
        timer.invalidate()
        counter = 0.0
        timeLabel.text = String(counter)
        playButton.enabled = true
        pauseButton.enabled = false
    }



}

