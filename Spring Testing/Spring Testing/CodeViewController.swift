//
//  CodeViewController.swift
//  Spring Testing
//
//  Created by Mohamad Moudallal on 1/1/16.
//  Copyright © 2016 Mohamad Said Moudallal. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {
    
    @IBOutlet weak var modalView: DesignableView!
    
    @IBOutlet weak var codeTextView: UITextView!
    
    @IBAction func closeButtonPressed(sender: AnyObject){
        dismissViewControllerAnimated(true, completion: nil)
        
        UIApplication.sharedApplication().sendAction("maximizeView:", to: nil, from: self, forEvent: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        modalView.transform = CGAffineTransformMakeTranslation(0, 300)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        UIApplication.sharedApplication().sendAction("minimizeView:", to: nil, from: self, forEvent: nil)
        
        modalView.animate()
        
        var codeText: String = "layer.animation = \"\(myAnimation)\"\n"
        codeText += "layer.cornerRadius = \(roundness)\n"
        codeText += "layer.repeatCount = \(myRepeatCount)\n"
        codeText += "layer.animate()"
        codeTextView.text = codeText
    }
    
    func minimizeView(sender: AnyObject) {
        SpringAnimation.spring(0.7, animations: {
            self.view.transform = CGAffineTransformMakeScale(0.935, 0.935)
        })
        
    }
    
    func maximizeView(sender: AnyObject) {
        SpringAnimation.spring(0.7, animations: {
            self.view.transform = CGAffineTransformMakeScale(1, 1)
        })

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
