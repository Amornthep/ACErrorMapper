//
//  ViewController.swift
//  ACErrorMapper
//
//  Created by Amornthep on 12/04/2018.
//  Copyright (c) 2018 Amornthep. All rights reserved.
//

import UIKit
import ACErrorMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let errorMapper = ErrorMapper(ExampleErrorData.authenticateError)
        let error = errorMapper.mapError(code: ErrorCode.error_code.rawValue, method: "login", input: "input", messgae: "user not found")
        print(error)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

