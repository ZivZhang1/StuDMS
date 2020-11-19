var t;
t=outlookbar.addtitle('系统属性')
outlookbar.additem('系统属性',t,'/gongyu/astu/index/sysPro.jsp')


t=outlookbar.addtitle('时间信息')
outlookbar.additem('静校时间',t,'/gongyu/jingxiaoshijian.action')
outlookbar.additem('熄灯时间',t,'/gongyu/xidengshijian.action')


t=outlookbar.addtitle('我的报修')
outlookbar.additem('我的报修',t,'/gongyu/baoxiuManaMy.action')
outlookbar.additem('我要报修',t,'/gongyu/astu/baoxiu/baoxiuAddMy.jsp')


t=outlookbar.addtitle('卫生排名')
outlookbar.additem('卫生排名',t,'/gongyu/weishengManaPaiming.action')



t=outlookbar.addtitle('退出系统') 
outlookbar.additem('安全退出',t,'/gongyu/login.jsp')