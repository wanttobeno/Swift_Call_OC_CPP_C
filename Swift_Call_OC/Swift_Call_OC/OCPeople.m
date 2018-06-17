//
//  OCPeople.m
//  Swift_Call_OC
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//


#import <Foundation/Foundation.h>

#import "OCPeople.h"


@implementation CPeople


-(void) SetPeopleInfo: (NSString*) name:(int) age;
{
    _name = name;
    _age = age;
}

- (void)logMe:(NSString *)logMe logYou:(NSString *)logYou {
    NSLog(@"%@--%@", logMe, logYou);
}

-(void)SayHello;
{
    NSLog(@"Hello, World!");

    printf("%s \n",_name.UTF8String);
    
    NSLog(@"%@ Hello World!\n",_name);
}


@end









