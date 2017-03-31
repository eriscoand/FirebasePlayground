//
//  SecondViewController.swift
//  FirebasePlayground
//
//  Created by Eric Risco de la Torre on 28/03/2017.
//  Copyright © 2017 ERISCO. All rights reserved.
//

import UIKit
import FirebaseAnalytics

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        FIRAnalytics.setScreenName("Second Screen", screenClass: "Second")

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button3Action(_ sender: Any) {
        FIRAnalytics.logEvent(withName: "Button3", parameters: ["product": "Test3" as NSObject, "count": "9" as NSObject])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
