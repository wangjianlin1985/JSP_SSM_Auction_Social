# JSP_SSM_Auction_Social
JSP基于SSM响应式拍卖社交网站可升级SpringBoot毕业源码案例设计
## 程序开发环境：myEclipse/Eclipse/Idea都可以 + mysql数据库
## 前台技术框架： Bootstrap  后台架构框架: SSM
前台后台
前台用户可以发布竞价物品，标注竞价起价，发布竞价时间，例如在2017-11-22日，
竞价时间为5分钟，其他用户可以登录进行竞价在这期间内，5分钟内，以最高价者得以竞价得拍，并且生成我的订单
bbs论坛模块，发帖回帖，跟帖，用户之间可以互相关注
## 实体ER属性：
实体信息：
用户: 用户名,登录密码,姓名,性别,生日,用户照片,联系电话,所在城市,家庭地址,邮箱,paypal账户名,注册时间

商品类别: 商品分类id,商品类别名称,类别描述

商品: 商品id,商品分类,商品标题,商品图片,商品描述,发布人,起拍价,起拍时间,结束时间

竞拍订单: 订单编号,竞拍商品,竞拍用户,竞拍时间,竞拍出价

帖子: 帖子id,帖子标题,帖子内容,发帖人,发帖时间,浏览量

回复: 回复id,被回帖子,回复内容,回复人,回复时间

用户关注: 记录id,被关注人,关注人,关注时间