//
//  ViewController.swift
//  Menu Bars
//
//  Created by Leo on 05/11/2017.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var startNumber = 240
    var timer = Timer()
    var isTimeRunning = true
    let t = 10
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBAction func playButton(_ sender: Any) {
        
       runTime()
        
    }
    
   
    @IBAction func stopButton(_ sender: Any) {
        
        timer.invalidate()  //stop running time
        
    }
   
    
    @IBAction func resetButton(_ sender: Any) {
        
        numberLabel.text = String(240)
        timer.invalidate()
        
    }
    
    @IBAction func plusTimeButton(_ sender: Any) {
        
        startNumber += 10
        numberLabel.text = String(startNumber)
       
    }
    
    @IBAction func subTimeButton(_ sender: Any) {
        
        if startNumber >= 10 {
        
            startNumber -= 10
            numberLabel.text = String(startNumber)
        
        }
    }
    
    @objc func processTimer() {
        
        if startNumber > 0 {
        
            startNumber -= 1
        numberLabel.text = "\(startNumber)"
        
        }else{
            
            timer.invalidate()
            
        }
    }
    
    func runTime() {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
    
        numberLabel.text = String(startNumber)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

