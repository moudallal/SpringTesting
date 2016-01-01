//
//  InfoViewController.swift
//  Spring Testing
//
//  Created by Mohamad Moudallal on 1/1/16.
//  Copyright © 2016 Mohamad Said Moudallal. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBAction func fbButtonPressed(sender: AnyObject){
        let fb = "https://www.facebook.com/mhmoudallal"
        let url: NSURL = NSURL(string: fb)!
        UIApplication.sharedApplication().openURL(url)
    }
    @IBAction func twitterButtonPressed(sender: AnyObject){
        let tw = "https://www.twitter.com/MhMoudallal"
        let url: NSURL = NSURL(string: tw)!
        UIApplication.sharedApplication().openURL(url)
    }
    @IBAction func githubButtonPressed(sender: AnyObject){
        let gh = "https://www.github.com/MhTheDev"
        let url: NSURL = NSURL(string: gh)!
        UIApplication.sharedApplication().openURL(url)
    }
    @IBAction func websiteButtonPressed(sender: AnyObject){
        let website = "http://mhthedev.github.io"
        let url: NSURL = NSURL(string: website)!
        UIApplication.sharedApplication().openURL(url)
    }
    @IBAction func closeVC(sender: AnyObject){
        dismissViewControllerAnimated(true, completion: nil)
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
