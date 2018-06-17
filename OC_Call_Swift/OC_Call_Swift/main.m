//
//  main.m
//  OC_Call_Swift
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

#import <Foundation/Foundation.h>


// 编译选项中开启 Defines Module  为 Yes
// OC调用Swift不用 桥接文件
//#include "OC_Call_Swift-Bridging-Header.h"

// 需要这个文件，文件是由编译器生成的
#import "OC_Call_Swift-Swift.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    // Swift实例
    SwiftClass* swift = [[SwiftClass alloc] init];
    

    // !!!!!!!!!!!!!!
    // 这里的函数名变了！！！！！！！！！！！！！！！
    // 末尾加上WithName
    [swift SetInfoWithName:@"小红"  with2:18 with3:FALSE];
    
    
    // 调用Swift的方法
    NSString* str = [swift SayHelloWithName:@"小明"];
    
    NSLog(@"%@ \n",str);
    
    
    return 0;
}
