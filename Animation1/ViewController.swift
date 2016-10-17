//
//  ViewController.swift
//  Animation1
//
//  Created by James Leach on 4/19/16.
//  Copyright © 2016 dadio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    var timer = NSTimer()
    
    var isAnimating = true
    
    @IBOutlet weak var alienImage: UIImageView!

    @IBAction func updateImage(sender: AnyObject) {
        
        if isAnimating == true {
        
            timer.invalidate()
            
            isAnimating = false
        
        } else {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            
            isAnimating = true
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
        
        
        
    }
    
    func    doAnimation(){
        
        if counter == 5 {
            
            counter = 1
        } else {
            
            counter++
        }
        
        alienImage.image = UIImage(named: "frame\(counter).png")
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    /*
    override func viewWillLayoutSubviews() {
        
        alienImage.frame = CGRectMake(100, 20 , 0, 0)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
       UIView.animateWithDuration(1) { () -> Void in
        
        self.alienImage.frame = CGRectMake(100, 20 , 100, 200)
        }
        
    }
    */
    
    
    
    

}

