//
//  SwiftClass.swift
//  Swift_Call_OC
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

import Foundation


public class SwiftClass :NSObject
{
    var _name : String = ""
    var _age : uint = 0
    var _bBoy :Bool = false
    
    override init() {
    
    }
    
    // https://blog.csdn.net/tonny_guan/article/details/38640049
    //第一个参数不需要指定外部参数名，第二个参数（除了第一个以后所有的参数）需要指定外部参数名，
    //例如withName是name参数的外部参数名。这是为了方便在Objective-C中调用。
    // Func sayHello(greeting : String, withName name : String) ->String

    public func SetInfo2(name:String,with2 age:String,with3 bBoy:String) {

    }
    
    public func SetInfo(name:String,with2 age:uint,with3 bBoy:Bool) {
        _name = name
        _age = age
        _bBoy = bBoy
    }
    
    
    func SayHello(name:String) -> String{
        let str =  "Hello" + name + "!"
        return str
    }

}

