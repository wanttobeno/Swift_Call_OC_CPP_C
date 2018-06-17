//
//  ObjectClass.h
//  OC_Call_CPP
//
//  Created by Hi on 2018/6/17.
//  Copyright © 2018年 Hi. All rights reserved.
//

#ifndef ObjectClass_h
#define ObjectClass_h

#import <Foundation/Foundation.h>

// 避免头文件相互应用
//@class CPeople;

#import "CPeople.hpp"


@interface ObjectClass : NSObject {
    
    CPeople*  _people;
}

- (id)init;
- (void)dealloc;

- (CPeople*) NewPeople;

- (void)SetPeopleInfo:(NSString*)name: (uint) age: (bool) bBoy;

- (void)SayHello;

@end



#endif /* ObjectClass_h */
