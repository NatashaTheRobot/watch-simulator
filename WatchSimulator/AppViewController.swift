//
<<<<<<< HEAD
//  WatchAppViewController.swift
//  WatchSimulator
//
//  Created by temporary on 10/12/14.
=======
//  AppViewController.swift
//  WatchSimulator
//
//  Created by balau on 9/27/14.
>>>>>>> FETCH_HEAD
//  Copyright (c) 2014 Ben Morrow. All rights reserved.
//

import UIKit

class AppViewController: UIViewController {
<<<<<<< HEAD
    
    var numTaps = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initAppearance()
    }
    
    func initAppearance() -> Void {
        let background = CAGradientLayer().turquoiseColor()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, atIndex: 0)
    }
    
    @IBAction func buttonTapped(sender: UIButton) {
        sender.setTitle("\(++numTaps)", forState: .Normal)
    }
=======

    var startTime = NSTimeInterval()
    var timer = NSTimer()
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func start() {
        
        if !timer.valid {
            let aSelector : Selector = "updateTime"
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: aSelector, userInfo: nil, repeats: true)
            startTime = NSDate.timeIntervalSinceReferenceDate()
        }
    }
    @IBAction func stop() {
        timer.invalidate()
    }
    
    func updateTime() {
        var currentTime = NSDate.timeIntervalSinceReferenceDate()
        var elapsedTime: NSTimeInterval = currentTime - startTime
        
        let minutes = UInt8(elapsedTime / 60.0)
        elapsedTime -= (NSTimeInterval(minutes) * 60)
        
        let seconds = UInt8(elapsedTime)
        elapsedTime -= NSTimeInterval(seconds)
    
        let fraction = UInt8(elapsedTime * 100)
        
        let strMinutes = minutes > 9 ? String(minutes):"0" + String(minutes)
        let strSeconds = seconds > 9 ? String(seconds):"0" + String(seconds)
        let strFraction = fraction > 9 ? String(fraction):"0" + String(fraction)
        
        timeLabel.text = "\(strMinutes):\(strSeconds):\(strFraction)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
>>>>>>> FETCH_HEAD

}