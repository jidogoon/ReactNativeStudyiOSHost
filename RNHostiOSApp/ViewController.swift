//
//  ViewController.swift
//  RNHostiOSApp
//
//  Created by Dohyun Ji on 10/06/2019.
//  Copyright © 2019 Dohyun Ji. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnReactNative(_ sender: Any) {
        print("clicked")
        let jsCodeLocation = URL(string: "http://localhost:8081/rn_src/index.bundle?platform=ios")
        let mockData:NSDictionary = ["scores":
            [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"10"]
            ]
        ]
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "DorunDorun",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        vc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        self.present(vc, animated: true, completion: nil)
    }
}

