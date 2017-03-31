//
//  Post.swift
//  FirebasePlayground
//
//  Created by Eric Risco de la Torre on 31/03/2017.
//  Copyright © 2017 ERISCO. All rights reserved.
//

import Foundation
import Firebase

class Post: NSObject{
    
    var title: String
    var desc: String
    var cloudRef: FIRDatabaseReference?
    
    init(title: String, description: String){
        self.title = title
        self.desc = description
        self.cloudRef = nil
    }
    
    init(snapshot: FIRDataSnapshot?){
        self.cloudRef = snapshot?.ref
        self.title = (snapshot?.value as? [String:Any])?["title"] as! String
        self.desc = (snapshot?.value as? [String:Any])?["description"] as! String
    }
    
    convenience override init(){
        self.init(title: "", description: "")
    }
    
}
