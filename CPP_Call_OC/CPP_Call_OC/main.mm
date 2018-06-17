//
//  main.m
//  CPP_Call_OC
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

#import <Foundation/Foundation.h>

#include "CPeople.hpp"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    CPeople* people = new CPeople();
    people->ObjectC_SayHello();
    delete people;
    return 0;
}
