//
//  ArrayList.swift
//  LXGenerics_Demo
//
//  Created by linxiang on 2017/7/13.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit




// 案例一：使用传统方法 -> 保存int数据
class ArrayList: NSObject {
    
//    array数组
    private var array = Array<Int>()
    
//  添加元素
    func add(obj:Int) {
        self.array.append(obj)
    }
    
//  删除指定元素
    func remove(index: Int) {
        self.array.remove(at: index)
    }
    
//  获得指定元素
    func get(index:Int) -> Int {
        return self.array[index]
    }
    
//  打印数据元素
    func forEach() {
        for item in array {
            print(item)
        }
    }
    
}

/************************泛型类定义实现*************************/

///类泛型
/*
 类泛型格式：class  类名<泛型名称>
 */
class ArrayList_1<T> {
    
    //    array数组
    private var array = Array<T>()
    
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
            print(item)
        }
    }
    
}




