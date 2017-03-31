//
//  PostViewController.swift
//  FirebasePlayground
//
//  Created by Eric Risco de la Torre on 30/03/2017.
//  Copyright © 2017 ERISCO. All rights reserved.
//

import UIKit
import Firebase

class PostViewController: UIViewController {
    
    let rootRef = FIRDatabase.database().reference().child("Post")
    
    var model: [Post] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        rootRef.observe(FIRDataEventType.value, with: { (snapshot) in
            print(snapshot.description)
            
            for child in snapshot.children {
                let post = Post.init(snapshot: child as? FIRDataSnapshot)
                self.model.append(post)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
        }) { (error) in
            
            
        }
        
    }
    
    @IBAction func addRecordClick(_ sender: Any) {
        addRecord()
    }
    
    func addRecord(){
        
        let key = rootRef.child("item").childByAutoId().key
        
        let post = ["title": "title1", "description": "description1"]
        
        let recordInFb = ["\(key)": post]
        
        rootRef.child("item").updateChildValues(recordInFb)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
