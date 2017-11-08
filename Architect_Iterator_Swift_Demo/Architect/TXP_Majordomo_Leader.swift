//
//  TXP_Majordomo_Leader.swift
//  Architect_Iterator_Swift_Demo
//
//  Created by tianxiuping on 2017/11/8.
//  Copyright © 2017年 TXP. All rights reserved.
//

import UIKit
//公司总监
class TXP_Majordomo_Leader: TXP_Leader {

    //总监可以批5天假
    override func limit() -> Int {
        return 5
    }
    
    override func handle(expense: TXP_LeaveDay) {
        print("请假标题是：\(expense.getTitle()!)")
        print("请假内容是：\(expense.getBody()!)")
        print("请假天数是：\(expense.getDay())")
        print("总监已批假....")
    }
}
