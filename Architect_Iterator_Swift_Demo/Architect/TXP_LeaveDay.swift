//
//  TXP_LeaveDay.swift
//  Architect_Iterator_Swift_Demo
//
//  Created by tianxiuping on 2017/11/8.
//  Copyright © 2017年 TXP. All rights reserved.
//

import UIKit
//请假天数抽象类
class TXP_LeaveDay: NSObject {

    //请假类型名称（事假，病假，婚假）
    var title:String?
    //请假天数
    var day:Int?
    //请假具体原因
    var body:String?
    
    init(title:String?,body:String?,day:Int) {
        super.init()
        self.title = title
        self.body = body
        self.day = day
    }
    
    func getTitle() -> String? {
        return self.title
    }
    
    func getBody() -> String? {
        return self.body
    }
    
    func getDay() -> Int {
        return self.day!
    }
}
