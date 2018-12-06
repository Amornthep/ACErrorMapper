//
//  ExampleErrorData.swift
//  ACErrorMapper_Example
//
//  Created by Amornthep Chuaiam on 6/12/2561 BE.
//  Copyright © 2561 CocoaPods. All rights reserved.
//

import UIKit
import ACErrorMapper

enum ErrorCode:String{
    case error_code = "error_code"
}

class ExampleErrorData: NSObject {
    
    static let authenticateError:[String:ErrorData] = [
        ErrorCode.error_code.rawValue:ErrorData(code: "application_code", type: .BadRequest)
    ]
    
}

