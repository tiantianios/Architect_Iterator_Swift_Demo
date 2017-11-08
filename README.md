# Architect_Iterator_Swift_Demo
责任链模式Swift版
## 事件角色案例
    1、员工请假，要走流程。
    2、ceo可以批10天假。
    3、总监可以批5天假。
    4、项目负责人可以批3天假。
    5、由员工请假的天数决定哪个领导审批。
## 运行环境
    1、xcode8以上
    2、iOS10以上
    3、swift3.0以上
## 步骤
### 第一步：新建抽象处理类->TXP_Leader（领导类）
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
###  第二步：新建抽象假条类（TXP_LeaveDay）
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
          }
### 新建具体的领导类 TXP_CEO_Leader、TXP_Majordomo_Leader、TXP_Manager_Leader
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
### 第四步：测试
    override func viewDidLoad() {
            super.viewDidLoad()
            self.demo1()
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
