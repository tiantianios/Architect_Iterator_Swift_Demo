//
//  TXP_Leader.swift
//  Architect_Iterator_Swift_Demo
//
//  Created by tianxiuping on 2017/11/8.
//  Copyright © 2017年 TXP. All rights reserved.
//

import UIKit

//领导抽象类
//第一个特点：定义下一个节点
//第二个特点：定义处理方法

class TXP_Leader: NSObject {

    var nextLeader:TXP_Leader?
    //第二个特点：定义处理方法
    final func handleExpense(expense:TXP_LeaveDay) {
        if expense.getDay() <= self.limit() {
            //满足要求，执行当前处理
            self.handle(expense: expense)
        } else {
            //不满足要求执行下一个节点
            self.nextLeader?.handleExpense(expense: expense)
        }
    }
    
    func handle(expense:TXP_LeaveDay) {
        
    }
    //限制天数
    func limit() -> Int {
        return 0
    }
}
