//
//  LX_ModelArray.swift
//  LXGenerics_Demo
//
//  Created by linxiang on 2017/7/14.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit

// 普通的泛型（泛型协议）
// 问题：可以存储任意类型
// 要求：目前泛型类类型要求必须是baseModel子类
/*
class LX_ModelArray<T>: LX_IArray {

    typealias ItemType = T
    
    var array = Array<T>()
    
    func add(obj:T) {
        self.array.append(obj)
    }
    
    func remove(index:Int) {
        self.array.remove(at: index)
    }
    
    func get(index:Int)-> T? {
        return self.array[index]
    }
    
    func removeAll() {
        self.array.removeAll()
    }
    
    func forEach() {
        for item in self.array {
            print(item)
        }
    }
}
*/

// 改进
// 泛型类型的约束
// 格式：
/*
 class 类名<泛型类型：约束类型名称> {
 
 }
 */

class LX_ModelArray<T : BaseModel>: LX_IArray {
    
    typealias ItemType = T
    
    var array = Array<T>()
    
    func add(obj:T) {
        self.array.append(obj)
    }
    
    func remove(index:Int) {
        self.array.remove(at: index)
    }
    
    func get(index:Int)-> T? {
        return self.array[index]
    }
    
    func removeAll() {
        self.array.removeAll()
    }
    
    func forEach() {
        for item in self.array {
            print(item)
        }
    }
}





