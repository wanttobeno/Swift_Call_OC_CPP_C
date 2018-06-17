//
//  CPeople.hpp
//  OC_Call_CPP
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

#ifndef CPeople_hpp
#define CPeople_hpp

#include <stdio.h>

#include <string>

class CPeople
{
public:
    CPeople();
    ~CPeople();
    void SayHello();
    void InitInfo(std::string name,int age,bool bBoy);
    void ShowInfo();
    uint64_t GetID();
private:
    std::string _name;
    std::wstring _wname;
    int         _nAge;
    bool        _bBoy;
    uint64_t     _ID;  // 唯一标识符
};


#endif /* CPeople_hpp */
