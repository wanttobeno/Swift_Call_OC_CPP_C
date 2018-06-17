//
//  main.swift
//  Swift_Call_OC
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

import Foundation


print("Hello, World!")


// swift中用swift的语法调用OC文件的方法了,CPeople继承NSObject
// 这里不能使用var
let people = CPeople()

var name = "北京"
var age:Int32?=18


people.setPeopleInfo(name, age!)

people.sayHello()

people.logMe("log me", logYou: "log you")



