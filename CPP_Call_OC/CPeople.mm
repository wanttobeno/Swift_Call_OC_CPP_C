//
//  CPeople.cpp
//  CPP_Call_OC
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//


// 文件中有调用Objective-C的方法，那么将文件后缀名从.cpp改为.mm文件。

#import <Foundation/Foundation.h>

//  C ++ 的写法不变
#include "CPeople.hpp"


CPeople::CPeople()
{

}

CPeople::~CPeople()
{
    
}

void CPeople::SayHello()
{
    printf("Hello World!\n");
}


void CPeople::ObjectC_SayHello()
{
    NSString* str = @"Object C Hello World!\n";
    //NSLog(@"Object C Hello World!\n");
    // 输出C语言模式
    //NSLog(@"%s ",str);
    // 输出Object C 模式
    NSLog(@"%@",str);
}












