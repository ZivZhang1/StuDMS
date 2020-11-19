var t;

t=outlookbar.addtitle('修改密码')
outlookbar.additem('密码修改',t,'/gongyu/admin/userinfo/userPw.jsp')

t=outlookbar.addtitle('系统管理')
outlookbar.additem('系统管理',t,'/gongyu/adminManage.action')


t=outlookbar.addtitle('学生管理')
outlookbar.additem('学生管理',t,'/gongyu/stuMana.action')
outlookbar.additem('学生添加',t,'/gongyu/admin/stu/stuAdd.jsp')


t=outlookbar.addtitle('时间管理')
outlookbar.additem('静校时间',t,'/gongyu/jingxiaoshijian.action')
outlookbar.additem('熄灯时间',t,'/gongyu/xidengshijian.action')




t=outlookbar.addtitle('宿舍管理')
outlookbar.additem('宿舍管理',t,'/gongyu/susheMana.action')
outlookbar.additem('宿舍添加',t,'/gongyu/admin/sushe/susheAdd.jsp')



t=outlookbar.addtitle('来访管理')
outlookbar.additem('来访管理',t,'/gongyu/laifangMana.action')
outlookbar.additem('来访登记',t,'/gongyu/admin/laifang/laifangAdd.jsp')

t=outlookbar.addtitle('卫生检查')
outlookbar.additem('卫生检查',t,'/gongyu/weishengMana.action')
outlookbar.additem('检查信息录入',t,'/gongyu/admin/weisheng/weishengAdd.jsp')
outlookbar.additem('卫生排名信息',t,'/gongyu/weishengManaPaiming.action')


t=outlookbar.addtitle('报修审批')
outlookbar.additem('报修审批',t,'/gongyu/baoxiuMana.action')




t=outlookbar.addtitle('退出系统') 
outlookbar.additem('安全退出',t,'/gongyu/login.jsp')