//
//  AbsArrayList.swift
//  LXGenerics_Demo
//
//  Created by linxiang on 2017/7/13.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit

// 原始的泛型类设计
/*
 假设这个类是我的系统1.0版本
 现在新需求：需要升级到2.0版本
 
 遵循开闭原则：修改封闭，扩展开发
 两种方案实现：
    第一种：通过Swift语言特性Extention(扩展)
    第二种：通过继承实现
 */

class AbsArrayList<T> {

    var array = Array<T>();
    
    //  添加元素
    func add(obj:T) {
        self.array.append(obj)
    }
    
    //  删除指定元素
    func remove(index: Int) {
        self.array.remove(at: index)
    }
    
    //  获得指定元素
    func get(index:Int) -> T {
        return self.array[index]
    }
    
    //  打印数据元素
    func forEach() {
        for item in array {
            print("输出：",item)
        }
    }
}

// 升级方法一：通过Swift语言特性Extention(扩展)
extension AbsArrayList {
    func removeAll() {
        return self.array.removeAll()
    }
}



