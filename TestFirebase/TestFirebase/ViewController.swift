//
//  ViewController.swift
//  TestFirebase
//
//  Created by home on 2018/05/19.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var testField: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    
    
    // インスタンス変数
    var DBRef: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // インスタンスを作成
        DBRef = Database.database().reference()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 要素の追加
    @IBAction func addtest(_ sender: Any) {
        let age: Int = Int(testField.text!)!
        let data = ["age": age]
        DBRef.child("user/01").setValue(data)
        
        let defaultPlace = DBRef.child("user/01/age")
        defaultPlace.observe(.value) { (snap: DataSnapshot) in self.ageLabel.text = (snap.value! as AnyObject).description}
    }
}

