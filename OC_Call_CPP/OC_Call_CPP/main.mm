//
//  main.m
//  OC_Call_CPP
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

//  Object-c  swift  c 互调
//  https://www.cnblogs.com/imhere/p/4323322.html

#import <Foundation/Foundation.h>

// OC 中导入 C++ 文件,并将包含的本文件后缀名从.m改为.mm，告诉编译器 混编
#import "CPeople.hpp"

// stl 使用例子
#import "CContaintor.hpp"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    CPeople* people = new CPeople();
    people->InitInfo("小明", 17, TRUE);
    people->SayHello();
    people->ShowInfo();
    
    CContaintor<CPeople> vContain;
    vContain.Add(people);
    
    
    return 0;
}





