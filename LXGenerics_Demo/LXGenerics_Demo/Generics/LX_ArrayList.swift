//
//  LX_ArrayList.swift
//  LXGenerics_Demo
//
//  Created by linxiang on 2017/7/13.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit

//第二种：通过继承实现
/*
 泛型继承格式:
 class : 类名<泛型名称> ：父类名称<泛型名称>
 
 */
class LX_ArrayList<T>: AbsArrayList<T> {

    // 扩展方法
    func removeA() {
        self.array.removeAll()
    }
    
    
}
