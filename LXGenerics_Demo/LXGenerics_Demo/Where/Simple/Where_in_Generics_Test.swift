//
//  Where_in_Generics_Test.swift
//  LXGenerics_Demo
//
//  Created by linxiang on 2017/7/24.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit

// 基础 model
class BaseModel_1: NSObject {
    
    var age:Int = 100
    
}

// 学生
class StudentModel: BaseModel_1 {
    
}


class Where_in_Generics_Test: NSObject {

// 方式一： 上一节课 “约束”
    // 比较两个对象年龄大小
    func change<T : BaseModel_1>(a:inout T , b:inout T) {
        
    }
    
    
    
// 方式二：where语句实现
    // 加入 class 申明：表示类方法，直接通过类名调用
    class func change_1<T>(a:T , b:T) where T : BaseModel_1 {
        if a.age == b.age {
            print("年龄相当")
        }else{
            print("不相当")
        }
    }
    
    
    
    
}







