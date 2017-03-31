//
//  ViewController.swift
//  FirebasePlayground
//
//  Created by Eric Risco de la Torre on 28/03/2017.
//  Copyright © 2017 ERISCO. All rights reserved.
//

import UIKit
import FirebaseAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        FIRAnalytics.setScreenName("Initial Screen", screenClass: "Main")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button1Action(_ sender: Any) {
        FIRAnalytics.logEvent(withName: "Button1", parameters: ["product": "Test1" as NSObject, "count": "3" as NSObject])
    }
    
    @IBAction func button2Action(_ sender: Any) {
        FIRAnalytics.logEvent(withName: "Button2", parameters: ["product": "Test2" as NSObject, "count": "6" as NSObject])
    }
    
    @IBOutlet weak var button2Action: UIButton!

}

