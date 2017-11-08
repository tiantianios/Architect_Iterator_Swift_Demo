//
//  TXP_CEO_Leader.swift
//  Architect_Iterator_Swift_Demo
//
//  Created by tianxiuping on 2017/11/8.
//  Copyright © 2017年 TXP. All rights reserved.
//

import UIKit
//公司老板CEO
class TXP_CEO_Leader: TXP_Leader {

    //CEO可以批10天假
    override func limit() -> Int {
        return 10
    }
    
    override func handle(expense: TXP_LeaveDay) {
        print("请假标题是：\(expense.getTitle()!)")
        print("请假内容是：\(expense.getBody()!)")
        print("请假天数是：\(expense.getDay())")
        print("CEO已批假....")
    }
}
