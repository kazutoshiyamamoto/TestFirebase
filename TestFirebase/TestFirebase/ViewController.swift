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
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?)
        -> Bool {
            FirebaseApp.configure()
            return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

