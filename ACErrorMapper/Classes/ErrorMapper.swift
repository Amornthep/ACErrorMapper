//
//  ErrorMapper.swift
//  ACErrorMapper
//
//  Created by Amornthep Chuaiam on 4/12/2561 BE.
//

import CoreFoundation

public class ErrorMapper {
    var errorData = [String:ErrorData]()
    
    public init (_ errorData:[String:ErrorData]){
        self.errorData = errorData
    }
    
    open func mapError(code:String, method:String?, input:String?, messgae:String?) -> AppError{
        if let error = errorData[code]{
            let appError = AppError(code: error.code, method: method, input: input, causeCode: code, causeMessage: messgae, type: error.type)
            return appError
        }
        return AppError(code: nil, method: method, input: input, causeCode: code, causeMessage: messgae, type: .Unknown)
    }
}

