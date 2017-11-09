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
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBAction func playButton(_ sender: Any) {
        
        runTime()
        
    }
    
    
    @IBAction func stopButton(_ sender: Any) {
        
        timer.invalidate()  //stop running time
        
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        
        startNumber = 240
        numberLabel.text = String(startNumber)
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
    
    
    func runTime() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(ViewController.tTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func tTimer() {
        if startNumber > 0 {
            startNumber -= 1
            numberLabel.text = String(startNumber)
        }else{
            timer.invalidate()
        }
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

