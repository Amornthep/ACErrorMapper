//
//  AppError.swift
//  ACErrorMapper
//
//  Created by Amornthep Chuaiam on 6/12/2561 BE.
//

import CoreFoundation

public enum ErrorType{
    case BadRequest
    case Internal
    case Unauthorized
    case Forbidden
    case NotFound
    case Timeout
    case Unavailable
    case Unknown
}

public struct AppError {
    public var method:String?
    public var input:String?
    public var causeCode:String?
    public var causeMessage:String?
    public var applicationCode:String?
    public var applicationMessage:String?
    public var errorType:ErrorType?
    
    init (code:String?, method:String?, input:String?, causeCode:String?, causeMessage:String?, type:ErrorType?){
        self.method = method
        self.input = input
        self.causeCode = causeCode
        self.causeMessage = causeMessage
        self.errorType = type
        self.applicationCode = code
    }
    
    init(){
        
    }
}
