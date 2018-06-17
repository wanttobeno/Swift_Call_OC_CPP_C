//
//  ObjectClass.m
//  OC_Call_CPP
//
//  Created by Hi on 2018/6/17.
//  Copyright © 2018年 Hi. All rights reserved.
//



#import "ObjectClass.h"




@implementation ObjectClass


- (id)init{
    _people = new CPeople();
    return self;
}

- (void)dealloc
{
    //析构函数是在对象完全销毁的时候自动调用
    //对象销毁的时候调用 计数器 retainCount = 0
    //dealloc 不可以人为调用
    //在dealloc里清除成员变量,代理,监听等
    delete _people;
    _people = NULL;
    NSLog(@"\n析构函数 Del CPeople\n");
}


- (CPeople*) NewPeople{
    
    if (_people) {
        delete _people;
        _people = new CPeople();
    }
    return _people;
}

- (void)SetPeopleInfo:(NSString*)name: (uint) age: (bool) bBoy{
    _people->InitInfo(name.UTF8String,age,bBoy);
}

- (void)SayHello{
    _people->SayHello();
}

@end
