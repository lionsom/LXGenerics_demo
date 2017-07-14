//
//  LX_ConcreteIArray.swift
//  LXGenerics_Demo
//
//  Created by linxiang on 2017/7/14.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit

class LX_ConcreteIArray<T>: LX_IArray {

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
