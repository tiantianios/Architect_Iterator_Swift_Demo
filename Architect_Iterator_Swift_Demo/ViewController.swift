//
//  ViewController.swift
//  Architect_Iterator_Swift_Demo
//
//  Created by tianxiuping on 2017/11/8.
//  Copyright © 2017年 TXP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demo3()
    }

    func demo1() {
        let ceoLeader = TXP_CEO_Leader()
        let majordomoLeader = TXP_Majordomo_Leader()
        let managerLeader = TXP_Manager_Leader()
        managerLeader.nextLeader = majordomoLeader
        majordomoLeader.nextLeader = ceoLeader
        
        let expense = TXP_LeaveDay(title: "婚假", body: "我要娶白富美啦！，快快批假", day: 8)
        
        managerLeader.handleExpense(expense: expense)
    }
    
    func demo2() {
        let ceoLeader = TXP_CEO_Leader()
        let majordomoLeader = TXP_Majordomo_Leader()
        let managerLeader = TXP_Manager_Leader()
        managerLeader.nextLeader = majordomoLeader
        majordomoLeader.nextLeader = ceoLeader
        
        let expense = TXP_LeaveDay(title: "病假", body: "鹿晗恋爱了啦！我生病啦！求安慰几天", day: 4)
        
        managerLeader.handleExpense(expense: expense)
    }
    
    func demo3() {
        let ceoLeader = TXP_CEO_Leader()
        let majordomoLeader = TXP_Majordomo_Leader()
        let managerLeader = TXP_Manager_Leader()
        managerLeader.nextLeader = majordomoLeader
        majordomoLeader.nextLeader = ceoLeader
        
        let expense = TXP_LeaveDay(title: "事假", body: "临时约会！大大给假", day: 1)
        
        managerLeader.handleExpense(expense: expense)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

