//
//  ErrorData.swift
//  ACErrorMapper
//
//  Created by Amornthep Chuaiam on 6/12/2561 BE.
//

import CoreFoundation

public class ErrorData {
    let code:String
    let type:ErrorType
    
    public init(code:String, type:ErrorType) {
        self.code = code
        self.type = type
    }
}
