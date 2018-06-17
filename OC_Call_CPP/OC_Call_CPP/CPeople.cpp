//
//  CPeople.cpp
//  OC_Call_CPP
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

#include "CPeople.hpp"
#include <stdio.h>
#include <iostream>

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

void CPeople::InitInfo(std::string name,int age,bool bBoy)
{
    _name = name;
    _nAge = age;
    _bBoy = bBoy;
}

void CPeople::ShowInfo()
{
    std::cout<< "name: " << _name.c_str() << "Age:" << _nAge;
    if (_bBoy)
        std::cout<<" is Boy." <<std::endl;
    else
        std::cout<<" is girl." << std::endl;
}

uint64_t CPeople::GetID()
{
    return _ID;
}




