//
//  ViewController.swift
//  Spring Testing
//
//  Created by Mohamad Moudallal on 1/1/16.
//  Copyright © 2016 Mohamad Said Moudallal. All rights reserved.
//

import UIKit

var myAnimation:String = String()
var titleVC: String = String()
var roundness = 75
var myBool: Bool = true
var myRepeatCount: Int = Int()

class ViewController: UIViewController {
    @IBOutlet weak var roundedView: DesignableView!
    
    @IBOutlet weak var changeRoundnessButton: DesignableButton!
    
    @IBOutlet weak var repeater: UITextField!
    
    @IBAction func changeRoundness(sender: AnyObject){
        
        if myBool == true {
            myBool = false
            roundness = 75
            changeRoundnessButton.cornerRadius = 8
            roundedView.cornerRadius = CGFloat(roundness)
        } else {
            myBool = true
            roundness = 30
            changeRoundnessButton.cornerRadius = 15
            roundedView.cornerRadius = CGFloat(roundness)
        }
        
    }
    
    @IBAction func animateButton(sender: AnyObject) {
        
        if myAnimation == ""{
            let alertController = UIAlertController(title: "Oops", message:
                "You forgot to set an animation human! Set one using the 'Choose an animation' button below", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,
                handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        } else {
            if repeater.text == ""{
                myRepeatCount = 1
            } else {
                myRepeatCount = Int(repeater.text!)!
            }
            roundedView.animation = myAnimation
            roundedView.repeatCount = Float(myRepeatCount)
            roundedView.animate()
        
            print(myAnimation)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if roundness == 75 {
            changeRoundnessButton.cornerRadius = 8
            roundedView.cornerRadius = 75
        } else {
            changeRoundnessButton.cornerRadius = 15
            roundedView.cornerRadius = 30
        }
        print(roundness)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        self.title = titleVC
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

