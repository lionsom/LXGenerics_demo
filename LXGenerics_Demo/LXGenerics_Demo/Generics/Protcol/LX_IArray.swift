//
//  LX_IArray.swift
//  LXGenerics_Demo
//
//  Created by linxiang on 2017/7/13.
//  Copyright © 2017年 minxing. All rights reserved.
//

import Foundation

//数组协议
//泛型协议格式
/*
 protocol 协议名称 {
    associatedtype 泛型名称
 }
 */

protocol LX_IArray {
//    定义关联类型
    associatedtype ItemType
    
    func add(obj:ItemType)
    
    func remove(index:Int)
    
    func get(index:Int)-> ItemType?
    
    func removeAll()
    
    func forEach()
    
}






