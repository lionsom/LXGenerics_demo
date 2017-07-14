//
//  GenericsTest1.swift
//  LXGenerics_Demo
//
//  Created by linxiang on 2017/7/13.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit


/// 方法泛型
class GenericsTest1: NSObject {

    
    // 两个数 交换
    // 以下方法将int类型进行交换
    // inout：表示输入输出参数
    // 传递引用，而不是具体数值
    func conversionToInt(a:inout Int,b:inout Int) {
        let c = a
        a = b
        b = c
    }
    
    func conversionToDouble(a:inout Double,b:inout Double) {
        let c = a
        a = b
        b = c
    }
 
    
    // 交互 Float、UInt数据类型？？
    /*
     找规律？
     参数结构、逻辑结构类似
     解决方案：泛型设计
        在定义的时候，不需要指定类型，在使用的时候指定类型不就得了吗？
        这种方式：称之为 **方法泛型**
     
     方法泛型格式：func 方法名<泛型名称>(a:泛型名称,b:泛型名称...){}
     */
    func change<Type>(a:inout Type,b:inout Type) {
        let c = a
        a = b
        b = c
    }

}
