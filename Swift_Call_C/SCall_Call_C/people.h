//
//  people.h
//  SCall_Call_C
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

#ifndef people_h
#define people_h

#include <stdio.h>

typedef struct _people
{
    char* name;
    uint age;
    uint sex;
    uint64_t id;
}people;


people* NewPeople();

void SetPeopleInfo(people* ple,char* name,uint age,uint sex,uint64_t id);

void SayHello(const people* ple);





#endif /* people_h */
