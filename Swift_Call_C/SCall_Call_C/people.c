//
//  people.c
//  SCall_Call_C
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

#include "people.h"

#include <memory.h>

#define max_name_len 64

int min(x,y)
{
    if(x>=y) return y; return x;
}

people* NewPeople()
{
    people* p = (people*)malloc(sizeof(people));
    p->name = (char*)malloc(max_name_len);
    memset(p->name, 0, max_name_len);
    p->age = 18;
    p->sex = 0;
    p->id = 0;
    return p;
}


void SetPeopleInfo(people* ple,char* name,uint age,uint sex,uint64_t id)
{
    if(ple == NULL || name == NULL)
        return;
    int nlen = strlen(name);
    nlen = min(nlen, max_name_len);
    strncpy(ple->name, name, nlen);
    ple->age = age;
    ple->sex = sex;
    ple->id = id;
}


void SayHello(const people* ple)
{
    printf("%s Hello World!\n",ple->name);
}
