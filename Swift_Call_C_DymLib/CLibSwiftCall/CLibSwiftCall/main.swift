//
//  main.swift
//  CLibSwiftCall
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

import Foundation

print("Hello, World!")

// 首先dllpath 一定是编译完成的C语言动态链接库，在mac上是.dylib文件，在linux上是.so文件
// 请注意dllpath 一定是绝对路径

// 失败
// var dllpath = "libCSwift.dylib"

// 失败
// var dllpath = "CSwift.framework"

// 成功
var dllpath = "CSwift.framework/CSwift"

guard let lib = dlopen(dllpath,  RTLD_LAZY) else {
    print("Can`t open dylib file")
    exit(0)
}

///////////////////////////////////////////////////////////////

// 将动态函数库函数地址绑定到刚才声明的函数类型上
typealias HelloWorldFun = @convention(c)() -> Void

guard let c_HelloWorld = dlsym(lib, "SayHello") else {
    print("Not this func!")
    exit(0)
}

let helloWorld = unsafeBitCast(c_HelloWorld, to: HelloWorldFun.self)
helloWorld()

///////////////////////////////////////////////////////////////
// 然后声明需要引用的函数类型
typealias AddFunc = @convention(c) (CInt, CInt) -> CInt

// 用dlsym方法真正获取目标函数的地址
guard let c_add = dlsym(lib, "c_add") else {
    dlclose(lib)
    exit(0)
}

// 将动态函数库函数地址绑定到刚才声明的函数类型上
let add = unsafeBitCast(c_add, to: AddFunc.self)

// 调用动态链接库
let x = add(1, 2)
print(x)

// 释放资源
dlclose(lib)


