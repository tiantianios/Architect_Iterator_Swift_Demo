//
//  TXP_Manager_Leader.swift
//  Architect_Iterator_Swift_Demo
//
//  Created by tianxiuping on 2017/11/8.
//  Copyright © 2017年 TXP. All rights reserved.
//

import UIKit
//公司项目管理者
class TXP_Manager_Leader: TXP_Leader {

    //项目管理者可以批3天假
    override func limit() -> Int {
        return 3
    }
    
    override func handle(expense: TXP_LeaveDay) {
        print("请假标题是：\(expense.getTitle()!)")
        print("请假内容是：\(expense.getBody()!)")
        print("请假天数是：\(expense.getDay())")
        print("项目管理者已批假....")
    }
}
