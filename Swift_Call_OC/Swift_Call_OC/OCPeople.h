//
//  OCPeople.h
//  Swift_Call_OC
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

#ifndef OCPeople_h
#define OCPeople_h

// 这是一个Object C 类
#import <Foundation/Foundation.h>

@interface CPeople : NSObject{
    
    NSString  *_name;
    NSString *_form;
    int        _age;
}

-(void)SetPeopleInfo:(NSString*) name: (int) age;

-(void) logMe:(NSString*)logMe logYou:(NSString*)logYou;

-(void)SayHello;


@end




#endif /* OCPeople_h */
