//
//  ViewController.swift
//  stopWatch
//
//  Created by tuğçe on 30/06/16.
//  Copyright © 2016 tuğçe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer=NSTimer()
    var time=0
    func increaseTimer(){
        time = time + 1
        timerLabel.text="\(time)"
        
    }

    
    @IBOutlet weak var timerLabel: UILabel!
    @IBAction func play(sender: AnyObject) {
        
        timer=NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: (#selector(ViewController.increaseTimer)), userInfo: nil, repeats: true)
        
            }
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
    }
    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        time=0
        timerLabel.text="0"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 


}

