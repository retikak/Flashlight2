//
//  ViewController.swift
//  Flashlight2
//
//  Created by Retika Kumar on 2/6/16.
//  Copyright © 2016 kumar.retika. All rights reserved.
//

import UIKit




    class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var button: UIButton!
    
    var isOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func toggle(){
        if isOn {
            self.isOn = false
            self.button.setTitle("On", forState: .Normal)
            self.button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.view.backgroundColor = UIColor.blackColor()
            
        }else{
            self.isOn = true
            self.button.setTitle("Of", forState: .Normal)
            self.button.setTitleColor(UIColor.blackColor(), forState: .Normal)
            self.view.backgroundColor = UIColor.whiteColor()
            
        }
        
    }
    
    
    @IBAction func buttonTapped(sender: AnyObject) {
        toggle()
    }
    
    
    @IBAction func swipeGesture(sender: UISwipeGestureRecognizer) {
        toggle()
    }
    
}




