//
//  ViewController.swift
//  DeviceTool
//
//  Created by galaxy on 2020/11/2.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let machineName = UIDevice.gl_machineName
        print("\(machineName)")
    }


}

