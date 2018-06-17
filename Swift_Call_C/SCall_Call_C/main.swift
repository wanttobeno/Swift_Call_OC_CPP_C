//
//  main.swift
//  SCall_Call_C
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

import Foundation

print("Hello, World!")

var ple = NewPeople()


//  swift 中自动转换了c的语法
// SetPeopleInfo(<#T##ple: UnsafeMutablePointer<people>!##UnsafeMutablePointer<people>!#>, <#T##name: UnsafeMutablePointer<Int8>!##UnsafeMutablePointer<Int8>!#>, <#T##age: uint##uint#>, <#T##sex: uint##uint#>, <#T##id: UInt64##UInt64#>)


// swift 字符串转换为char*,必须有一个强转!
var test1 = "小明"
var cString1 = test1.cString(using: String.Encoding.utf8)!

SetPeopleInfo(ple,&cString1, 18, 1, 123456)

SayHello(ple)

free(ple)



