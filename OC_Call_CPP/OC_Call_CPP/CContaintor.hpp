//
//  CContaintor.hpp
//  OC_Call_CPP
//
//  Created by Hi on 2018/6/16.
//  Copyright © 2018年 Hi. All rights reserved.
//

#ifndef CPeopleContaintor_hpp
#define CPeopleContaintor_hpp

#include <stdio.h>
#include <vector>

template <class Type>
class CContaintor
{
public:
    CContaintor();
    virtual ~ CContaintor();
    
    void Add(Type* value);
    bool Del(uint64_t nID);
private:
    std::vector<Type*>   m_vContaintor;
    
};

template <typename Type>
CContaintor<Type>::CContaintor()
{
    
}

template <typename Type>
CContaintor<Type>::~CContaintor()
{
    for (auto it = m_vContaintor.begin();it != m_vContaintor.end(); it ++) {
        delete *it;
    }
    m_vContaintor.clear();
}

template <typename Type>
void CContaintor<Type>::Add(Type* value)
{
    m_vContaintor.push_back(value);
}

template <typename Type>
bool CContaintor<Type>::Del(uint64_t nID)
{
    for (auto it = m_vContaintor.begin();it != m_vContaintor.end(); it ++) {
        Type* people = (Type*)(*it);
        if (people->GetID()) {
            m_vContaintor.erase(it);
            return true;
        }
    }
    return false;
}



#endif /* CContaintor_hpp */
