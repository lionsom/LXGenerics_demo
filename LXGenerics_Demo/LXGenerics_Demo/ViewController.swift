//
//  ViewController.swift
//  LXGenerics_Demo
//
//  Created by linxiang on 2017/7/13.
//  Copyright © 2017年 minxing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
// 方法泛型 测试
        let genercics = GenericsTest1();
        var a = 100
        var b = 200
        genercics.conversionToInt(a: &a, b: &b)
        var c = 10.9
        var d = 20.5
        genercics.conversionToDouble(a: &c, b: &d)
        print("交互后得到 a == ",a,"\n交互后得到 b == ",b)
        print("交互后得到 c == ",c,"\n交互后得到 d == ",d)
        
        //相同类型才可以计算，要不然没法计算，除非你做类型转换
        var e = 20.5
        var f = 100.5
        genercics.change(a: &e, b: &f)
        print("交互后结果 e = \(e)")
        print("交互后结果 f = \(f)")
        
// 泛型类 - 普通写法
        let array = ArrayList()
        array.add(obj: 100)
        array.add(obj: 200)
        array.add(obj: 300)
        array.add(obj: 400)
        array.forEach()
        
// 泛型类测试
        let array_1 = ArrayList_1<Double>()
        array_1.add(obj:100.0)
        array_1.add(obj:100.1)
        array_1.add(obj:100.22)
        array_1.add(obj:100.333)
        array_1.forEach()
        
// 泛型类 拓展 继承
        let array_2 = LX_ArrayList<Int>()
        array_2.add(obj: 10)
        array_2.add(obj: 20)
        array_2.forEach()
        array_2.removeA()
        array_2.forEach()

// 泛型协议
        let array_3 = LX_ConcreteIArray<Int>()
        array_3.add(obj: 123)
        array_3.add(obj: 234)
        array_3.add(obj: 345)
        array_3.forEach()
    
// 泛型约束
        
        let array_4 = LX_ModelArray<UserModel>()
        let model1 = UserModel()
        model1.name = "lin"
        model1.password = "123"
        array_4.add(obj: model1)
        array_4.forEach()
        
        
        
        
        let someBody = StudentModel()
        someBody.age = 100
        let anotherBody = StudentModel()
        anotherBody.age = 120
        
        Where_in_Generics_Test.change_1(a: someBody, b:anotherBody)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

