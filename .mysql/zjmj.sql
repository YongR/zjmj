# Host: localhost  (Version: 5.5.53)
# Date: 2020-03-15 08:21:10
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "mj_agent"
#

DROP TABLE IF EXISTS `mj_agent`;
CREATE TABLE `mj_agent` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sort` bigint(20) unsigned DEFAULT '10' COMMENT '权重排序',
  `total_bonus` decimal(9,3) unsigned DEFAULT '0.000' COMMENT '总奖金',
  `cash` decimal(9,3) unsigned DEFAULT '0.000' COMMENT '已经提现的',
  `no_cash` decimal(9,3) unsigned DEFAULT '0.000' COMMENT '未提现',
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员',
  `name` varchar(100) DEFAULT '' COMMENT '姓名',
  `tel` varchar(20) DEFAULT '' COMMENT '电话',
  `email` varchar(40) DEFAULT '' COMMENT '邮箱',
  `id_card` varchar(64) DEFAULT '' COMMENT '身份证',
  `bank_name` varchar(128) DEFAULT '' COMMENT '收款银行',
  `bank_account` varchar(128) DEFAULT '' COMMENT '银行账户',
  `wechat` varchar(128) DEFAULT '' COMMENT '微信账号',
  `agent_level` int(11) unsigned DEFAULT '0' COMMENT '代理商等级',
  `member_num` int(11) unsigned DEFAULT '0' COMMENT '名下会员数',
  `deal_num` int(11) unsigned DEFAULT '0' COMMENT '成交数量',
  `return_percent` decimal(4,2) unsigned DEFAULT '0.00' COMMENT '返点',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '加入代理日期',
  `status` int(11) unsigned DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `idx_agent_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='代理-记录';

#
# Data for table "mj_agent"
#

INSERT INTO `mj_agent` VALUES (1,2,0.000,0.000,0.000,1,'马云','15109510000','15109510000@qq.com','64026181321541512','农业银行','62295210456000','86542221',3,0,0,0.06,'2020-03-01 00:00:00',1),(2,3,0.000,0.000,0.000,2,'马化腾','17600000000','17600000000@qq.com','6402654946548999','建设银行','62284894121516513','86542222',1,0,0,0.10,'2020-03-06 00:00:00',1),(5,5,0.000,0.000,0.000,1,'老刘','1656565699','16565656565@qq.com','6421232656459788','浦发','656462326595626','86542223',2,0,0,0.00,'2020-03-07 00:58:23',1);

#
# Structure for table "mj_agent_apply"
#

DROP TABLE IF EXISTS `mj_agent_apply`;
CREATE TABLE `mj_agent_apply` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` int(11) unsigned DEFAULT '0' COMMENT '状态',
  `deal_time` varchar(40) DEFAULT '0' COMMENT '处理时间',
  `answer` varchar(255) DEFAULT '' COMMENT '留言',
  `tel` varchar(20) DEFAULT '' COMMENT '手机号',
  `name` varchar(40) DEFAULT '' COMMENT '姓名',
  `email` varchar(40) DEFAULT '' COMMENT '邮箱',
  `id_card` varchar(64) DEFAULT '' COMMENT '身份证',
  PRIMARY KEY (`id`),
  KEY `idx_agent_apply_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='代理-申请';

#
# Data for table "mj_agent_apply"
#

INSERT INTO `mj_agent_apply` VALUES (2,2,'2020-03-06 00:00:00',1,'2020-03-07 05:19:08','请审核都哈斯u给iiu爱斯杜工i阿瑟反攻谁都分工谁都分工松岛枫送递分工阿斯顿佛萨的佛阿斯顿佛阿斯顿哦发生东方哦i','15146599843','老王','15146599843@qq.com','6402265464684151658'),(5,1,'2020-03-07 05:30:37',0,'0','asf','16516165165','老侯','16516165165@qq.com','642156165131681');

#
# Structure for table "mj_agent_bonus"
#

DROP TABLE IF EXISTS `mj_agent_bonus`;
CREATE TABLE `mj_agent_bonus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员id',
  `agent_id` bigint(20) unsigned DEFAULT '0' COMMENT '代理商id',
  `order_id` bigint(20) unsigned DEFAULT '0' COMMENT '订单id',
  `order_no` varchar(40) DEFAULT '' COMMENT '订单编号',
  `buyer_id` bigint(20) unsigned DEFAULT '0' COMMENT '下单人的id',
  `bonus` decimal(9,2) unsigned DEFAULT '0.00' COMMENT '分红奖金',
  `return_percent` decimal(4,2) unsigned DEFAULT '0.00' COMMENT '分红比例',
  `order_total` decimal(6,2) unsigned DEFAULT '0.00' COMMENT '订单总价',
  `pay_time` varchar(40) DEFAULT '0' COMMENT '下单时间',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_agent_bonus_mid` (`mid`),
  KEY `idx_agent_bonus_agent_id` (`agent_id`),
  KEY `idx_agent_bonus_buyer_id` (`buyer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='代理-分红';

#
# Data for table "mj_agent_bonus"
#

INSERT INTO `mj_agent_bonus` VALUES (1,1,1,1,'41537583453',2,2.00,0.20,100.00,'2020-03-15 05:41:41','2020-03-15 05:41:41');

#
# Structure for table "mj_agent_cash_apply"
#

DROP TABLE IF EXISTS `mj_agent_cash_apply`;
CREATE TABLE `mj_agent_cash_apply` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '用户id',
  `agent_id` bigint(20) unsigned DEFAULT '0' COMMENT '代理商id',
  `cash` decimal(9,3) unsigned DEFAULT '0.000' COMMENT '提现金额',
  `bank_name` varchar(64) DEFAULT '' COMMENT '银行名',
  `bank_account` varchar(64) DEFAULT '' COMMENT '银行账户',
  `name` varchar(64) DEFAULT '' COMMENT '姓名',
  `tel` varchar(64) DEFAULT '' COMMENT '电话',
  `wechat` varchar(64) DEFAULT '' COMMENT '微信账号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pass_time` varchar(20) DEFAULT '0' COMMENT '提现时间',
  `status` int(11) unsigned DEFAULT '0' COMMENT '提现状态',
  `system_user` bigint(20) unsigned DEFAULT '0' COMMENT '后台操作者',
  PRIMARY KEY (`id`),
  KEY `idx_agent_cash_apply_status` (`status`),
  KEY `idx_agent_cash_apply_mid` (`mid`),
  KEY `idx_agent_cash_apply_agent_id` (`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='代理-提现';

#
# Data for table "mj_agent_cash_apply"
#

INSERT INTO `mj_agent_cash_apply` VALUES (1,1,1,9.000,'农业银行','6565232656541651','马云','1565665962154','64654651','2020-03-01 00:00:00','2020-03-07 11:32:42',1,10000);

#
# Structure for table "mj_agent_level"
#

DROP TABLE IF EXISTS `mj_agent_level`;
CREATE TABLE `mj_agent_level` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT '' COMMENT '等级名称',
  `return_percent` decimal(4,2) unsigned DEFAULT '0.00' COMMENT '返佣比例',
  `type` bigint(20) unsigned DEFAULT '0' COMMENT '代理等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='代理-等级';

#
# Data for table "mj_agent_level"
#

INSERT INTO `mj_agent_level` VALUES (1,'王者',1.00,1),(2,'大师',0.80,2),(3,'钻石',0.60,3),(4,'黄金',0.40,4);

#
# Structure for table "mj_model_model1"
#

DROP TABLE IF EXISTS `mj_model_model1`;
CREATE TABLE `mj_model_model1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cate_id` bigint(20) unsigned DEFAULT '0' COMMENT '分类',
  `title` text CHARACTER SET utf8 COMMENT '标题',
  `logo` text CHARACTER SET utf8 COMMENT 'logo图标',
  `specs` text CHARACTER SET utf8 COMMENT '规格JSON',
  `lists` text CHARACTER SET utf8 COMMENT '列表JSON',
  `image` text CHARACTER SET utf8 COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COMMENT '内容',
  `number_sales` bigint(20) unsigned DEFAULT '0' COMMENT '销售数量',
  `number_stock` bigint(20) unsigned DEFAULT '0' COMMENT '库从数量',
  `price_rate` decimal(20,4) unsigned DEFAULT '0.0000' COMMENT '返利比例',
  `price_express` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '统一运费',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '销售状态',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_model_model1_cate_id` (`cate_id`),
  KEY `idx_model_model1_is_deleted` (`is_deleted`),
  KEY `idx_model_model1_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=68281329876173 DEFAULT CHARSET=utf8mb4 COMMENT='样版-记录';

#
# Data for table "mj_model_model1"
#

INSERT INTO `mj_model_model1` VALUES (68281329876172,1,'测试','http://zjmj.cn/upload/69867521182f4912/08cebb9cb8010fb1.gif','[{\"name\":\"默认分组\",\"list\":[{\"name\":\"默认规格\",\"check\":true,\"span\":1,\"show\":true,\"group\":\"默认分组\"}]}]','[[{\"name\":\"默认规格\",\"check\":true,\"span\":1,\"show\":true,\"group\":\"默认分组\",\"key\":\"默认分组::默认规格\",\"sku\":\"123\",\"virtual\":2,\"express\":1,\"market\":\"10.00\",\"selling\":\"1.00\",\"status\":true}]]','http://zjmj.cn/upload/270772ef95a72cf7/ca1d3988113a8d49.gif','',0,1552,0.0000,0.00,1,0,0,'2020-02-27 22:22:29');

#
# Structure for table "mj_model_model1_cate"
#

DROP TABLE IF EXISTS `mj_model_model1_cate`;
CREATE TABLE `mj_model_model1_cate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '分类图标',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '分类名称',
  `desc` varchar(1024) CHARACTER SET utf8 DEFAULT '' COMMENT '分类描述',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '销售状态',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_model_model1_cate_is_deleted` (`is_deleted`),
  KEY `idx_model_model1_cate_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='样版-分类';

#
# Data for table "mj_model_model1_cate"
#

INSERT INTO `mj_model_model1_cate` VALUES (1,'http://zjmj.cn/upload/963d82af2ca8c13c/0ce2acfe9ca81444.jpg','新鲜果蔬','非常新鲜的瓜果蔬菜',1,0,0,'2020-02-27 22:09:47');

#
# Structure for table "mj_model_model1_list"
#

DROP TABLE IF EXISTS `mj_model_model1_list`;
CREATE TABLE `mj_model_model1_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(20) CHARACTER SET utf8 DEFAULT '' COMMENT 'sku 无  可当备用字段',
  `goods_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品id',
  `goods_spec` varchar(100) CHARACTER SET utf8 DEFAULT '' COMMENT '规格',
  `price_market` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '标价',
  `price_selling` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '售价',
  `number_sales` bigint(20) unsigned DEFAULT '0' COMMENT '数量',
  `number_stock` bigint(20) unsigned DEFAULT '0' COMMENT '库存',
  `number_virtual` bigint(20) unsigned DEFAULT '0' COMMENT '虚拟销量',
  `number_express` bigint(20) unsigned DEFAULT '1' COMMENT '快递数量',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '商品状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_model_model1_list_id` (`goods_id`),
  KEY `idx_model_model1_list_sku` (`sku`),
  KEY `idx_model_model1_list_spec` (`goods_spec`),
  KEY `idx_model_model1_list_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='样版-详情';

#
# Data for table "mj_model_model1_list"
#

INSERT INTO `mj_model_model1_list` VALUES (1,'123',68281329876172,'默认分组::默认规格',10.00,1.00,0,1552,2,1,1,'2020-02-27 22:22:28');

#
# Structure for table "mj_model_model1_stock"
#

DROP TABLE IF EXISTS `mj_model_model1_stock`;
CREATE TABLE `mj_model_model1_stock` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品id',
  `goods_spec` varchar(200) CHARACTER SET utf8 DEFAULT '' COMMENT '商品规格',
  `number_stock` bigint(20) unsigned DEFAULT '0' COMMENT '商品库存',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_model_model1_stock_gid` (`goods_id`),
  KEY `idx_model_model1_stock_spec` (`goods_spec`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='样版-入库';

#
# Data for table "mj_model_model1_stock"
#

INSERT INTO `mj_model_model1_stock` VALUES (1,68281329876172,'默认分组::默认规格',100,'2020-02-27 22:25:37'),(2,68281329876172,'默认分组::默认规格',1000,'2020-02-27 22:29:33'),(3,68281329876172,'默认分组::默认规格',100,'2020-02-27 22:38:40'),(4,68281329876172,'默认分组::默认规格',120,'2020-02-27 22:39:14'),(5,68281329876172,'默认分组::默认规格',12,'2020-02-27 22:40:36'),(6,68281329876172,'默认分组::默认规格',100,'2020-02-27 22:42:55'),(7,68281329876172,'默认分组::默认规格',110,'2020-02-27 22:43:16'),(8,68281329876172,'默认分组::默认规格',10,'2020-02-28 11:31:07');

#
# Structure for table "mj_store_express_company"
#

DROP TABLE IF EXISTS `mj_store_express_company`;
CREATE TABLE `mj_store_express_company` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `express_title` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '快递公司名称',
  `express_code` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '快递公司代码',
  `express_desc` varchar(512) CHARACTER SET utf8 DEFAULT '' COMMENT '快递公司描述',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0.无效,1.有效)',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COMMENT='商城-快递-公司';

#
# Data for table "mj_store_express_company"
#

INSERT INTO `mj_store_express_company` VALUES (5,'AAE全球专递','aae',NULL,0,0,0,'2017-09-12 11:53:40'),(6,'安捷快递','anjie','',0,0,0,'2017-09-13 15:27:26'),(7,'安信达快递','anxindakuaixi',NULL,0,0,0,'2017-09-13 16:05:19'),(8,'彪记快递','biaojikuaidi',NULL,0,0,0,'2017-09-13 16:05:26'),(9,'BHT','bht','',0,0,0,'2017-09-13 16:05:37'),(10,'百福东方国际物流','baifudongfang',NULL,0,0,0,'2017-09-13 16:05:41'),(11,'中国东方（COE）','coe',NULL,0,0,0,'2017-09-13 16:05:48'),(12,'长宇物流','changyuwuliu',NULL,0,0,0,'2017-09-13 16:05:58'),(13,'大田物流','datianwuliu',NULL,0,0,0,'2017-09-13 16:06:06'),(14,'德邦物流','debangwuliu','',0,1,0,'2017-09-13 16:06:14'),(15,'DHL','dhl',NULL,0,0,0,'2017-09-13 16:06:24'),(16,'DPEX','dpex',NULL,0,0,0,'2017-09-13 16:06:29'),(17,'d速快递','dsukuaidi',NULL,0,0,0,'2017-09-13 16:06:34'),(18,'递四方','disifang',NULL,0,0,0,'2017-09-13 16:06:40'),(19,'EMS快递','ems','',1,0,0,'2017-09-13 16:06:47'),(20,'FEDEX（国外）','fedex',NULL,0,0,0,'2017-09-13 16:06:56'),(21,'飞康达物流','feikangda',NULL,0,0,0,'2017-09-13 16:07:03'),(22,'凤凰快递','fenghuangkuaidi',NULL,0,0,0,'2017-09-13 16:07:10'),(23,'飞快达','feikuaida',NULL,0,0,0,'2017-09-13 16:07:16'),(24,'国通快递','guotongkuaidi',NULL,0,0,0,'2017-09-13 16:07:27'),(25,'港中能达物流','ganzhongnengda',NULL,0,0,0,'2017-09-13 16:07:33'),(26,'广东邮政物流','guangdongyouzhengwuliu',NULL,0,0,0,'2017-09-13 16:08:22'),(27,'共速达','gongsuda',NULL,0,0,0,'2017-09-13 16:08:48'),(28,'汇通快运','huitongkuaidi',NULL,0,0,0,'2017-09-13 16:08:56'),(29,'恒路物流','hengluwuliu',NULL,0,0,0,'2017-09-13 16:09:02'),(30,'华夏龙物流','huaxialongwuliu',NULL,0,0,0,'2017-09-13 16:09:12'),(31,'海红','haihongwangsong',NULL,0,0,0,'2017-09-13 16:09:20'),(32,'海外环球','haiwaihuanqiu',NULL,0,0,0,'2017-09-13 16:09:27'),(33,'佳怡物流','jiayiwuliu',NULL,0,0,0,'2017-09-13 16:09:35'),(34,'京广速递','jinguangsudikuaijian',NULL,0,0,0,'2017-09-13 16:09:42'),(35,'急先达','jixianda',NULL,0,0,0,'2017-09-13 16:09:49'),(36,'佳吉物流','jjwl',NULL,0,0,0,'2017-09-13 16:10:01'),(37,'加运美物流','jymwl',NULL,0,0,0,'2017-09-13 16:10:13'),(38,'金大物流','jindawuliu',NULL,0,0,0,'2017-09-13 16:10:22'),(39,'嘉里大通','jialidatong',NULL,0,0,0,'2017-09-13 16:10:33'),(40,'晋越快递','jykd',NULL,0,0,0,'2017-09-13 16:10:40'),(41,'快捷速递','kuaijiesudi',NULL,0,0,0,'2017-09-13 16:10:49'),(42,'联邦快递（国内）','lianb',NULL,0,0,0,'2017-09-13 16:10:58'),(43,'联昊通物流','lianhaowuliu',NULL,0,0,0,'2017-09-13 16:11:07'),(44,'龙邦物流','longbanwuliu',NULL,0,0,0,'2017-09-13 16:11:15'),(45,'立即送','lijisong',NULL,0,0,0,'2017-09-13 16:11:25'),(46,'乐捷递','lejiedi',NULL,0,0,0,'2017-09-13 16:11:36'),(47,'民航快递','minghangkuaidi',NULL,0,0,0,'2017-09-13 16:11:45'),(48,'美国快递','meiguokuaidi',NULL,0,0,0,'2017-09-13 16:11:53'),(49,'门对门','menduimen',NULL,0,0,0,'2017-09-13 16:12:01'),(50,'OCS','ocs',NULL,0,0,0,'2017-09-13 16:12:10'),(51,'配思货运','peisihuoyunkuaidi',NULL,0,0,0,'2017-09-13 16:12:18'),(52,'全晨快递','quanchenkuaidi',NULL,0,0,0,'2017-09-13 16:12:26'),(53,'全峰快递','quanfengkuaidi',NULL,0,0,0,'2017-09-13 16:12:34'),(54,'全际通物流','quanjitong',NULL,0,0,0,'2017-09-13 16:12:41'),(55,'全日通快递','quanritongkuaidi',NULL,0,0,0,'2017-09-13 16:12:49'),(56,'全一快递','quanyikuaidi',NULL,0,0,0,'2017-09-13 16:12:56'),(57,'如风达','rufengda',NULL,0,0,0,'2017-09-13 16:13:03'),(58,'三态速递','santaisudi',NULL,0,0,0,'2017-09-13 16:13:15'),(59,'盛辉物流','shenghuiwuliu',NULL,0,0,0,'2017-09-13 16:13:22'),(60,'申通','shentong',NULL,0,0,0,'2017-09-13 16:13:34'),(61,'顺丰','shunfeng','',0,0,0,'2017-09-13 16:13:41'),(62,'速尔物流','sue',NULL,0,0,0,'2017-09-13 16:13:48'),(63,'盛丰物流','shengfeng',NULL,0,0,0,'2017-09-13 16:13:55'),(64,'赛澳递','saiaodi',NULL,0,0,0,'2017-09-13 16:14:02'),(65,'天地华宇','tiandihuayu',NULL,0,0,0,'2017-09-13 16:14:11'),(66,'天天快递','tiantian',NULL,0,0,0,'2017-09-13 16:14:19'),(67,'TNT','tnt',NULL,0,0,0,'2017-09-13 16:14:26'),(68,'UPS','ups',NULL,0,0,0,'2017-09-13 16:14:29'),(69,'万家物流','wanjiawuliu',NULL,0,0,0,'2017-09-13 16:14:37'),(70,'文捷航空速递','wenjiesudi',NULL,0,0,0,'2017-09-13 16:14:46'),(71,'伍圆','wuyuan',NULL,0,0,0,'2017-09-13 16:14:52'),(72,'万象物流','wxwl',NULL,0,0,0,'2017-09-13 16:15:00'),(73,'新邦物流','xinbangwuliu',NULL,0,0,0,'2017-09-13 16:15:06'),(74,'信丰物流','xinfengwuliu',NULL,0,0,0,'2017-09-13 16:15:15'),(75,'亚风速递','yafengsudi',NULL,0,0,0,'2017-09-13 16:15:23'),(76,'一邦速递','yibangwuliu',NULL,0,0,0,'2017-09-13 16:15:30'),(77,'优速物流','youshuwuliu',NULL,0,0,0,'2017-09-13 16:15:36'),(78,'邮政包裹挂号信','youzhengguonei',NULL,0,3,0,'2017-09-13 16:15:44'),(79,'邮政国际包裹挂号信','youzhengguoji',NULL,0,2,0,'2017-09-13 16:15:51'),(80,'远成物流','yuanchengwuliu',NULL,0,0,0,'2017-09-13 16:15:57'),(81,'圆通速递','yuantong','',1,1,0,'2017-09-13 16:16:03'),(82,'源伟丰快递','yuanweifeng',NULL,0,0,0,'2017-09-13 16:16:10'),(83,'元智捷诚快递','yuanzhijiecheng',NULL,0,0,0,'2017-09-13 16:16:17'),(84,'韵达快运','yunda',NULL,0,0,0,'2017-09-13 16:16:24'),(85,'运通快递','yuntongkuaidi',NULL,0,0,0,'2017-09-13 16:16:33'),(86,'越丰物流','yuefengwuliu',NULL,0,0,0,'2017-09-13 16:16:40'),(87,'源安达','yad',NULL,0,0,0,'2017-09-13 16:16:47'),(88,'银捷速递','yinjiesudi',NULL,0,0,0,'2017-09-13 16:16:56'),(89,'宅急送','zhaijisong',NULL,0,0,0,'2017-09-13 16:17:03'),(90,'中铁快运','zhongtiekuaiyun',NULL,0,0,0,'2017-09-13 16:17:10'),(91,'中通速递','zhongtong','',0,0,0,'2017-09-13 16:17:16'),(92,'中邮物流','zhongyouwuliu',NULL,0,0,0,'2017-09-13 16:17:27'),(93,'忠信达','zhongxinda',NULL,0,0,0,'2017-09-13 16:17:34'),(94,'芝麻开门','zhimakaimen','',1,0,0,'2017-09-13 16:17:41');

#
# Structure for table "mj_store_express_template"
#

DROP TABLE IF EXISTS `mj_store_express_template`;
CREATE TABLE `mj_store_express_template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rule` longtext COMMENT '省份规则内容',
  `order_reduction_state` tinyint(1) unsigned DEFAULT '0' COMMENT '订单满减状态',
  `order_reduction_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '订单满减金额',
  `first_number` bigint(20) unsigned DEFAULT '0' COMMENT '首件数量',
  `first_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '首件邮费',
  `next_number` bigint(20) unsigned DEFAULT '0' COMMENT '续件数量',
  `next_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '续件邮费',
  `is_default` tinyint(1) unsigned DEFAULT '0' COMMENT '默认规则',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_store_express_template_is_default` (`is_default`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='商城-快递-模板';

#
# Data for table "mj_store_express_template"
#

INSERT INTO `mj_store_express_template` VALUES (1,'北京市,天津市,河北省,山西省,内蒙古自治区,辽宁省,吉林省,黑龙江省,上海市,江苏省,浙江省,安徽省,福建省,江西省,山东省,河南省,湖北省,湖南省,广东省,广西壮族自治区,海南省,重庆市,四川省,贵州省,云南省,西藏自治区,陕西省,甘肃省,青海省,宁夏回族自治区,新疆维吾尔自治区',1,50.00,1,10.00,1,0.00,0,'2020-03-09 23:58:05'),(2,'默认邮费规则',0,0.00,1,0.00,1,0.00,1,'2020-03-09 23:58:05');

#
# Structure for table "mj_store_goods"
#

DROP TABLE IF EXISTS `mj_store_goods`;
CREATE TABLE `mj_store_goods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品分类',
  `title` text COMMENT '商品标题',
  `logo` text COMMENT '商品图标',
  `specs` text COMMENT '商品规格JSON',
  `lists` text COMMENT '商品列表JSON',
  `image` text COMMENT '商品图片',
  `content` longtext COMMENT '商品内容',
  `number_sales` bigint(20) unsigned DEFAULT '0' COMMENT '销售数量',
  `number_stock` bigint(20) unsigned DEFAULT '0' COMMENT '库库数量',
  `price_rate` decimal(20,4) unsigned DEFAULT '0.0000' COMMENT '返利比例',
  `price_express` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '统一运费',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '销售状态',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_store_goods_status` (`status`) USING BTREE,
  KEY `idx_store_goods_cate_id` (`cate_id`) USING BTREE,
  KEY `idx_store_goods_is_deleted` (`is_deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68279476668446 DEFAULT CHARSET=utf8mb4 COMMENT='商品-记录';

#
# Data for table "mj_store_goods"
#

INSERT INTO `mj_store_goods` VALUES (68278852138722,1,'cs1','http://zjmj.cn/upload/84fe723404daedff/075436117d5e21c7.jpg','[{\"name\":\"默认分组\",\"list\":[{\"name\":\"规格属性\",\"check\":true,\"span\":1,\"show\":true,\"group\":\"默认分组\"}]}]','[[{\"name\":\"规格属性\",\"check\":true,\"span\":1,\"show\":true,\"group\":\"默认分组\",\"key\":\"默认分组::规格属性\",\"sku\":\"1415\",\"virtual\":12,\"express\":\"1\",\"market\":\"10.00\",\"selling\":\"9.90\",\"status\":true}]]','http://zjmj.cn/upload/5257827e6486686a/a6abcfea6b311402.jpg|http://zjmj.cn/upload/e8cfca06ae99f676/e1e38e699b7d59e4.jpg|http://zjmj.cn/upload/534e565454ab7f29/92eef57efcae8dc4.jpg|http://zjmj.cn/upload/5ab98634df0d9d90/9df40a475b8ef4af.jpg','<p><img alt=\"\" src=\"http://zjmj.cn/upload/2abefcd907cc4b13/914d8c4bc1b367d2.jpg\" style=\"max-width:100%;border:0\" /><img alt=\"\" src=\"http://zjmj.cn/upload/c128bd6f5805604a/6fc38328c79c6cf2.jpg\" style=\"max-width:100%;border:0\" /><img alt=\"\" src=\"http://zjmj.cn/upload/ca3643d45d4b1e93/b725906da2890e6e.jpg\" style=\"max-width:100%;border:0\" /><img alt=\"\" src=\"http://zjmj.cn/upload/e13bcd8f6fa3cf35/a4090882ab8434cf.jpg\" style=\"max-width:100%;border:0\" /><img alt=\"\" src=\"http://zjmj.cn/upload/1f613ca6d27c269e/16782844c9a011b9.jpg\" style=\"max-width:100%;border:0\" /></p>\r\n',0,112,0.0000,0.00,1,0,0,'2020-02-27 15:29:56'),(68279476668445,1,'cs2','http://zjmj.cn/upload/f6653ba3f6e8fdbb/d3836006bd132ea3.jpg','[{\"name\":\"重量\",\"list\":[{\"name\":\"1kg\",\"check\":true,\"span\":1,\"show\":true,\"group\":\"重量\"},{\"name\":\"1.5kg\",\"check\":true,\"span\":1,\"show\":true,\"group\":\"重量\"}]}]','[[{\"name\":\"1kg\",\"check\":true,\"span\":1,\"show\":true,\"group\":\"重量\",\"key\":\"重量::1kg\",\"sku\":\"153563\",\"virtual\":25,\"express\":1,\"market\":\"10.00\",\"selling\":\"9.90\",\"status\":true}],[{\"name\":\"1.5kg\",\"check\":true,\"span\":1,\"show\":true,\"group\":\"重量\",\"key\":\"重量::1.5kg\",\"sku\":\"544522\",\"virtual\":53,\"express\":1,\"market\":\"15.00\",\"selling\":\"14.90\",\"status\":true}]]','http://zjmj.cn/upload/fa26a750b6e1484f/e2de55ece7e77656.jpg|http://zjmj.cn/upload/b1f78758aa1f681a/e0f22b2d2d753f0b.jpg|http://zjmj.cn/upload/5ab98634df0d9d90/9df40a475b8ef4af.jpg','<p><img alt=\"\" src=\"http://zjmj.cn/upload/ca3643d45d4b1e93/b725906da2890e6e.jpg\" style=\"max-width:100%;border:0\" /><img alt=\"\" src=\"http://zjmj.cn/upload/c128bd6f5805604a/6fc38328c79c6cf2.jpg\" style=\"max-width:100%;border:0\" /><img alt=\"\" src=\"http://zjmj.cn/upload/d8a6825b75321e1f/3c72fccecd0b4d4d.jpg\" style=\"max-width:100%;border:0\" /><img alt=\"\" src=\"http://zjmj.cn/upload/e347779bc19f75b6/056c4b5551d27439.jpg\" style=\"max-width:100%;border:0\" /><img alt=\"\" src=\"http://zjmj.cn/upload/a009a5217403ecaf/d3ba414bbec5a28d.jpg\" style=\"max-width:100%;border:0\" /></p>\r\n',0,150,0.0000,0.00,1,0,0,'2020-02-27 17:13:55');

#
# Structure for table "mj_store_goods_cate"
#

DROP TABLE IF EXISTS `mj_store_goods_cate`;
CREATE TABLE `mj_store_goods_cate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(500) DEFAULT '' COMMENT '分类图标',
  `title` varchar(255) DEFAULT '' COMMENT '分类名称',
  `desc` varchar(1024) DEFAULT '' COMMENT '分类描述',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '销售状态',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_store_goods_cate_is_deleted` (`is_deleted`) USING BTREE,
  KEY `idx_store_goods_cate_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='商品-分类';

#
# Data for table "mj_store_goods_cate"
#

INSERT INTO `mj_store_goods_cate` VALUES (1,'http://zjmj.cn/upload/1f819f3b42969540/645c717f43b480da.jpg','农家特产','感受来自农家的身心洗礼',1,0,0,'2020-02-27 11:38:31');

#
# Structure for table "mj_store_goods_list"
#

DROP TABLE IF EXISTS `mj_store_goods_list`;
CREATE TABLE `mj_store_goods_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(20) DEFAULT '' COMMENT 'sku',
  `goods_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品ID',
  `goods_spec` varchar(100) DEFAULT '' COMMENT '商品规格',
  `price_market` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '商品标价',
  `price_selling` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '商品售价',
  `number_sales` bigint(20) unsigned DEFAULT '0' COMMENT '销售数量',
  `number_stock` bigint(20) unsigned DEFAULT '0' COMMENT '商品库存',
  `number_virtual` bigint(20) unsigned DEFAULT '0' COMMENT '虚拟销量',
  `number_express` bigint(20) unsigned DEFAULT '1' COMMENT '快递数量',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '商品状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_store_goods_list_id` (`goods_id`) USING BTREE,
  KEY `idx_store_goods_list_spec` (`goods_spec`) USING BTREE,
  KEY `idx_store_goods_list_status` (`status`) USING BTREE,
  KEY `idx_store_goods_list_sku` (`sku`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='商品-详情';

#
# Data for table "mj_store_goods_list"
#

INSERT INTO `mj_store_goods_list` VALUES (8,'356354',68278852138722,'默认分组::规格属性',10.00,9.90,1,112,12,1,1,'2020-02-27 15:29:56'),(9,'153563',68279476668445,'重量::1kg',10.00,9.90,0,100,25,1,1,'2020-02-27 17:13:55'),(10,'544522',68279476668445,'重量::1.5kg',15.00,14.90,0,50,53,1,1,'2020-02-27 17:13:55');

#
# Structure for table "mj_store_goods_stock"
#

DROP TABLE IF EXISTS `mj_store_goods_stock`;
CREATE TABLE `mj_store_goods_stock` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品ID',
  `goods_spec` varchar(200) DEFAULT '' COMMENT '商品规格',
  `number_stock` bigint(20) unsigned DEFAULT '0' COMMENT '商品库存',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_store_goods_stock_gid` (`goods_id`) USING BTREE,
  KEY `idx_store_goods_stock_spec` (`goods_spec`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COMMENT='商品-入库';

#
# Data for table "mj_store_goods_stock"
#

INSERT INTO `mj_store_goods_stock` VALUES (30,68278852138722,'默认分组::规格属性',100,'2020-02-27 15:30:50'),(31,68278852138722,'默认分组::规格属性',12,'2020-02-27 16:53:33'),(32,68279476668445,'重量::1kg',100,'2020-02-27 17:24:24'),(33,68279476668445,'重量::1.5kg',50,'2020-02-27 17:24:24');

#
# Structure for table "mj_store_member"
#

DROP TABLE IF EXISTS `mj_store_member`;
CREATE TABLE `mj_store_member` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) DEFAULT '' COMMENT '微信OPENID',
  `headimg` varchar(512) DEFAULT '' COMMENT '头像地址',
  `nickname` varchar(100) DEFAULT '' COMMENT '微信昵称',
  `phone` varchar(20) DEFAULT '' COMMENT '联系手机',
  `username` varchar(50) DEFAULT '' COMMENT '真实姓名',
  `vip_level` tinyint(1) unsigned DEFAULT '0' COMMENT '会员级别(0游客,1为临时,2为VIP1,3为VIP2)',
  `vip_date` date DEFAULT NULL COMMENT '保级日期',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_store_member_openid` (`openid`) USING BTREE,
  KEY `idx_store_member_phone` (`phone`) USING BTREE,
  KEY `idx_store_member_vip_level` (`vip_level`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='会员-记录';

#
# Data for table "mj_store_member"
#

INSERT INTO `mj_store_member` VALUES (1,'1','','yong','17600221922','865439892',1,'0000-00-00','2020-02-24 19:11:59'),(2,'2','','cs','5451651','12123543',2,NULL,'2020-03-06 15:23:46');

#
# Structure for table "mj_store_member_address"
#

DROP TABLE IF EXISTS `mj_store_member_address`;
CREATE TABLE `mj_store_member_address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `name` varchar(100) DEFAULT '' COMMENT '收货姓名',
  `phone` varchar(20) DEFAULT '' COMMENT '收货手机',
  `province` varchar(100) DEFAULT '' COMMENT '地址-省份',
  `city` varchar(100) DEFAULT '' COMMENT '地址-城市',
  `area` varchar(100) DEFAULT '' COMMENT '地址-区域',
  `address` varchar(255) DEFAULT '' COMMENT '地址-详情',
  `is_default` tinyint(1) unsigned DEFAULT '0' COMMENT '默认地址',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_store_member_address_mid` (`mid`) USING BTREE,
  KEY `idx_store_member_address_is_default` (`is_default`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员-地址';

#
# Data for table "mj_store_member_address"
#


#
# Structure for table "mj_store_member_sms_history"
#

DROP TABLE IF EXISTS `mj_store_member_sms_history`;
CREATE TABLE `mj_store_member_sms_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `phone` varchar(20) DEFAULT '' COMMENT '目标手机',
  `content` varchar(512) DEFAULT '' COMMENT '短信内容',
  `region` varchar(100) DEFAULT '' COMMENT '区域编码',
  `result` varchar(100) DEFAULT '' COMMENT '返回结果',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_store_member_sms_history_phone` (`phone`) USING BTREE,
  KEY `idx_store_member_sms_history_mid` (`mid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员-短信';

#
# Data for table "mj_store_member_sms_history"
#


#
# Structure for table "mj_store_order"
#

DROP TABLE IF EXISTS `mj_store_order`;
CREATE TABLE `mj_store_order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `order_no` bigint(20) unsigned DEFAULT '0' COMMENT '订单单号',
  `from_mid` bigint(20) unsigned DEFAULT '0' COMMENT '推荐会员ID',
  `price_total` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '待付金额统计',
  `price_goods` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '商品费用统计',
  `price_express` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '快递费用统计',
  `price_rate_amount` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '返利金额统计',
  `pay_state` tinyint(1) unsigned DEFAULT '0' COMMENT '支付状态(0未支付,1已支付)',
  `pay_type` varchar(10) DEFAULT '' COMMENT '支付方式',
  `pay_price` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '支付金额',
  `pay_no` varchar(100) DEFAULT '' COMMENT '支付单号',
  `pay_at` datetime DEFAULT NULL COMMENT '支付时间',
  `cancel_state` tinyint(1) unsigned DEFAULT '0' COMMENT '取消状态',
  `cancel_at` datetime DEFAULT NULL COMMENT '取消时间',
  `cancel_desc` varchar(500) DEFAULT '' COMMENT '取消描述',
  `refund_state` tinyint(1) unsigned DEFAULT '0' COMMENT '退款状态(0未退款,1待退款,2已退款)',
  `refund_at` datetime DEFAULT NULL COMMENT '退款时间',
  `refund_no` varchar(100) DEFAULT '' COMMENT '退款单号',
  `refund_price` decimal(20,2) DEFAULT '0.00' COMMENT '退款金额',
  `refund_desc` varchar(500) DEFAULT '' COMMENT '退款描述',
  `express_state` tinyint(1) unsigned DEFAULT '0' COMMENT '发货状态(0未发货,1已发货,2已签收)',
  `express_company_code` varchar(255) DEFAULT '' COMMENT '发货快递公司编码',
  `express_company_title` varchar(255) DEFAULT '' COMMENT '发货快递公司名称',
  `express_send_no` varchar(50) DEFAULT '' COMMENT '发货单号',
  `express_send_at` datetime DEFAULT NULL COMMENT '发货时间',
  `express_address_id` bigint(20) unsigned DEFAULT '0' COMMENT '收货地址ID',
  `express_name` varchar(255) DEFAULT '' COMMENT '收货人姓名',
  `express_phone` varchar(11) DEFAULT '' COMMENT '收货人手机',
  `express_province` varchar(255) DEFAULT '' COMMENT '收货地址省份',
  `express_city` varchar(255) DEFAULT '' COMMENT '收货地址城市',
  `express_area` varchar(255) DEFAULT '' COMMENT '收货地址区域',
  `express_address` varchar(255) DEFAULT '' COMMENT '收货详细地址',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '订单状态(0已取消,1预订单待补全,2新订单待支付,3已支付待发货,4已发货待签收,5已完成)',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_store_groups_order_mid` (`mid`) USING BTREE,
  KEY `idx_store_groups_order_order_no` (`order_no`) USING BTREE,
  KEY `idx_store_groups_order_pay_state` (`pay_state`) USING BTREE,
  KEY `idx_store_groups_order_cancel_state` (`cancel_state`) USING BTREE,
  KEY `idx_store_groups_order_refund_state` (`refund_state`) USING BTREE,
  KEY `idx_store_groups_order_status` (`status`) USING BTREE,
  KEY `idx_store_groups_order_pay_no` (`pay_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='订单-记录';

#
# Data for table "mj_store_order"
#

INSERT INTO `mj_store_order` VALUES (1,2,41537583453,0,0.00,0.00,0.00,0.00,0,'',0.00,'',NULL,1,'2020-03-15 06:14:23','30分钟未完成支付自动取消订单',0,NULL,'',0.00,'',0,'','','',NULL,0,'','','','','','',0,0,'2020-03-15 05:44:09');

#
# Structure for table "mj_store_order_list"
#

DROP TABLE IF EXISTS `mj_store_order_list`;
CREATE TABLE `mj_store_order_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned DEFAULT '0' COMMENT '会员ID',
  `from_id` bigint(20) unsigned DEFAULT '0' COMMENT '推荐会员',
  `order_no` bigint(20) unsigned DEFAULT '0' COMMENT '订单单号',
  `goods_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品标识',
  `goods_title` varchar(255) DEFAULT '' COMMENT '商品标题',
  `goods_logo` varchar(500) DEFAULT '' COMMENT '商品图标',
  `goods_spec` varchar(100) DEFAULT '' COMMENT '商品规格',
  `price_real` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '交易金额',
  `price_selling` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '销售价格',
  `price_market` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '市场价格',
  `price_express` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '快递费用',
  `price_rate` decimal(20,4) unsigned DEFAULT '0.0000' COMMENT '分成比例',
  `price_rate_amount` decimal(20,2) unsigned DEFAULT '0.00' COMMENT '分成金额',
  `number_goods` bigint(20) unsigned DEFAULT '0' COMMENT '商品数量',
  `number_express` bigint(20) unsigned DEFAULT '0' COMMENT '快递数量',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_store_goods_list_id` (`goods_id`) USING BTREE,
  KEY `idx_store_goods_list_spec` (`goods_spec`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单-详情';

#
# Data for table "mj_store_order_list"
#


#
# Structure for table "mj_system_auth"
#

DROP TABLE IF EXISTS `mj_system_auth`;
CREATE TABLE `mj_system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '权限状态',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_system_auth_status` (`status`) USING BTREE,
  KEY `idx_system_auth_title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统-权限';

#
# Data for table "mj_system_auth"
#

INSERT INTO `mj_system_auth` VALUES (1,'系统菜单管理员',1,0,'只管理系统菜单','2020-02-26 18:21:22');

#
# Structure for table "mj_system_auth_node"
#

DROP TABLE IF EXISTS `mj_system_auth_node`;
CREATE TABLE `mj_system_auth_node` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色',
  `node` varchar(200) DEFAULT NULL COMMENT '节点',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_system_auth_auth` (`auth`) USING BTREE,
  KEY `idx_system_auth_node` (`node`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4 COMMENT='系统-权限-授权';

#
# Data for table "mj_system_auth_node"
#

INSERT INTO `mj_system_auth_node` VALUES (192,1,'admin'),(193,1,'admin/auth'),(194,1,'admin/auth/index'),(195,1,'admin/auth/apply'),(196,1,'admin/auth/add'),(197,1,'admin/auth/edit'),(198,1,'admin/auth/refresh'),(199,1,'admin/auth/forbid'),(200,1,'admin/auth/resume'),(201,1,'admin/auth/remove'),(202,1,'admin/config'),(203,1,'admin/config/info'),(204,1,'admin/config/config'),(205,1,'admin/config/file'),(206,1,'admin/index'),(207,1,'admin/index/clearRuntime'),(208,1,'admin/index/buildOptimize'),(209,1,'admin/menu'),(210,1,'admin/menu/index'),(211,1,'admin/menu/add'),(212,1,'admin/menu/edit'),(213,1,'admin/menu/resume'),(214,1,'admin/menu/forbid'),(215,1,'admin/menu/remove'),(216,1,'admin/oplog'),(217,1,'admin/oplog/index'),(218,1,'admin/oplog/clear'),(219,1,'admin/oplog/remove'),(220,1,'admin/queue'),(221,1,'admin/queue/index'),(222,1,'admin/queue/redo'),(223,1,'admin/queue/start'),(224,1,'admin/queue/stop'),(225,1,'admin/queue/clear'),(226,1,'admin/queue/remove'),(227,1,'admin/user'),(228,1,'admin/user/index'),(229,1,'admin/user/add'),(230,1,'admin/user/edit'),(231,1,'admin/user/pass'),(232,1,'admin/user/forbid'),(233,1,'admin/user/resume'),(234,1,'admin/user/remove'),(235,1,'model'),(236,1,'model/model1'),(237,1,'model/model1/index'),(238,1,'model/model1/stock'),(239,1,'model/model1/add'),(240,1,'model/model1/edit'),(241,1,'model/model1/forbid'),(242,1,'model/model1/resume'),(243,1,'model/model1/remove'),(244,1,'model/model1_cate'),(245,1,'model/model1_cate/index'),(246,1,'model/model1_cate/add'),(247,1,'model/model1_cate/edit'),(248,1,'model/model1_cate/forbid'),(249,1,'model/model1_cate/resume'),(250,1,'model/model1_cate/remove'),(251,1,'store'),(252,1,'store/config'),(253,1,'store/config/index'),(254,1,'store/config/save'),(255,1,'store/express_company'),(256,1,'store/express_company/index'),(257,1,'store/express_company/add'),(258,1,'store/express_company/edit'),(259,1,'store/express_company/forbid'),(260,1,'store/express_company/resume'),(261,1,'store/express_company/remove'),(262,1,'store/express_template'),(263,1,'store/express_template/index'),(264,1,'store/express_template/save'),(265,1,'store/goods'),(266,1,'store/goods/index'),(267,1,'store/goods/stock'),(268,1,'store/goods/add'),(269,1,'store/goods/edit'),(270,1,'store/goods/forbid'),(271,1,'store/goods/resume'),(272,1,'store/goods/remove'),(273,1,'store/goods_cate'),(274,1,'store/goods_cate/index'),(275,1,'store/goods_cate/add'),(276,1,'store/goods_cate/edit'),(277,1,'store/goods_cate/forbid'),(278,1,'store/goods_cate/resume'),(279,1,'store/goods_cate/remove'),(280,1,'store/member'),(281,1,'store/member/index'),(282,1,'store/message'),(283,1,'store/message/index'),(284,1,'store/message/remove'),(285,1,'store/order'),(286,1,'store/order/index'),(287,1,'store/order/express'),(288,1,'store/order/expressQuery'),(289,1,'store/slider'),(290,1,'store/slider/home');

#
# Structure for table "mj_system_config"
#

DROP TABLE IF EXISTS `mj_system_config`;
CREATE TABLE `mj_system_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '配置名',
  `value` varchar(500) DEFAULT '' COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_system_config_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COMMENT='系统-配置';

#
# Data for table "mj_system_config"
#

INSERT INTO `mj_system_config` VALUES (1,'app_name','指尖牧匠'),(2,'site_name','指尖牧匠'),(3,'app_version','1.0'),(4,'site_copy','©版权所有 ...'),(5,'site_icon','http://zjmj.cn/upload/9a34fd343f145afd/e4611c94a56f3a24.png'),(7,'miitbeian','...'),(8,'storage_type','local'),(9,'storage_local_exts','doc,gif,icon,jpg,mp3,mp4,p12,pem,png,rar'),(10,'storage_qiniu_bucket','https'),(11,'storage_qiniu_domain','用你自己的吧'),(12,'storage_qiniu_access_key','用你自己的吧'),(13,'storage_qiniu_secret_key','用你自己的吧'),(14,'storage_oss_bucket','cuci-mytest'),(15,'storage_oss_endpoint','oss-cn-hangzhou.aliyuncs.com'),(16,'storage_oss_domain','用你自己的吧'),(17,'storage_oss_keyid','用你自己的吧'),(18,'storage_oss_secret','用你自己的吧'),(36,'storage_oss_is_https','http'),(43,'storage_qiniu_region','华东'),(44,'storage_qiniu_is_https','https'),(45,'wechat_mch_id','1332187001'),(46,'wechat_mch_key','A82DC5BD1F3359081049C568D8502BC5'),(47,'wechat_mch_ssl_type','p12'),(48,'wechat_mch_ssl_p12','http://zjmj.cn/upload/26dd81747b70f22b/baa48b81c84e2505.p12'),(49,'wechat_mch_ssl_key',''),(50,'wechat_mch_ssl_cer',''),(51,'wechat_token','mytoken'),(52,'wechat_appid','wx60a43dd8161666d4'),(53,'wechat_appsecret','9978422e0e431643d4b42868d183d60b'),(54,'wechat_encodingaeskey',''),(55,'wechat_push_url','消息推送地址：http://127.0.0.1:8000/wechat/api.push'),(56,'wechat_type','thr'),(57,'wechat_thr_appid','wx60a43dd8161666d4'),(58,'wechat_thr_appkey','5caf4b0727f6e46a7e6ccbe773cc955d'),(60,'wechat_thr_appurl','消息推送地址：http://127.0.0.1:2314/wechat/api.push'),(61,'component_appid','wx28b58798480874f9'),(62,'component_appsecret','8d0e1ec14ea0adc5027dd0ad82c64bc9'),(63,'component_token','P8QHTIxpBEq88IrxatqhgpBm2OAQROkI'),(64,'component_encodingaeskey','L5uFIa0U6KLalPyXckyqoVIJYLhsfrg8k9YzybZIHsx'),(65,'system_message_state','0'),(66,'sms_zt_username','2515'),(67,'sms_zt_password','16515'),(68,'sms_reg_template','您的验证码为{code}，请在十分钟内完成操作！'),(69,'sms_secure','81651'),(70,'store_title','测试商城'),(71,'store_order_wait_time','0.50'),(72,'store_order_clear_time','24.00'),(73,'store_order_confirm_time','60'),(74,'sms_zt_username2','申请2'),(75,'sms_zt_password2','申请2'),(76,'sms_secure2','申请2'),(77,'sms_reg_template2','您的验证码为{code}，请在十分钟内完成操作！2'),(78,'michat_appid','2882303761518074614'),(79,'michat_appkey','5861807470614'),(80,'michat_appsecert','CP/WUTUgDuyOxgLQ5ztesg=='),(81,'_token_','csrf5e6d49d0e1a67');

#
# Structure for table "mj_system_data"
#

DROP TABLE IF EXISTS `mj_system_data`;
CREATE TABLE `mj_system_data` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置名',
  `value` longtext COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_system_data_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统-数据';

#
# Data for table "mj_system_data"
#

INSERT INTO `mj_system_data` VALUES (1,'menudata','[{\"name\":\"请输入名称\",\"type\":\"scancode_push\",\"key\":\"scancode_push\"}]');

#
# Structure for table "mj_system_log"
#

DROP TABLE IF EXISTS `mj_system_log`;
CREATE TABLE `mj_system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `geoip` varchar(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为名称',
  `content` varchar(1024) NOT NULL DEFAULT '' COMMENT '操作内容描述',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COMMENT='系统-日志';

#
# Data for table "mj_system_log"
#

INSERT INTO `mj_system_log` VALUES (1,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-25 00:28:37'),(2,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-25 02:01:02'),(3,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-26 17:21:56'),(4,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-26 18:07:54'),(5,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-26 18:29:34'),(6,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-26 18:30:33'),(7,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-26 18:31:13'),(8,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','yongr','2020-02-26 19:12:53'),(9,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-26 19:13:30'),(10,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','yongr','2020-02-26 19:14:55'),(11,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-26 19:15:15'),(12,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-27 00:15:21'),(13,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-27 11:05:09'),(14,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','yongr','2020-02-27 22:48:42'),(15,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-28 10:52:33'),(16,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-02-28 11:30:52'),(17,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-03 23:31:46'),(18,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-06 10:55:56'),(19,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-07 09:38:50'),(20,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-09 23:19:19'),(21,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-09 23:53:59'),(22,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','yongr','2020-03-09 23:56:06'),(23,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-10 00:16:16'),(24,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-10 03:23:33'),(25,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-11 04:41:02'),(26,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-11 05:55:22'),(27,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-12 06:03:44'),(28,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-12 22:40:07'),(29,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-13 22:54:14'),(30,'store/config/index','127.0.0.1','微信管理','修改微信支付配置成功','admin','2020-03-15 04:42:42'),(31,'store/config/index','127.0.0.1','商城参数配置','修改商城参数配置成功','admin','2020-03-15 04:54:43'),(32,'store/config/index','127.0.0.1','商城参数配置','修改商城参数配置成功','admin','2020-03-15 04:55:03'),(33,'store/config/index','127.0.0.1','商城参数配置','修改商城参数配置成功','admin','2020-03-15 05:02:02'),(34,'store/config/index','127.0.0.1','商城参数配置','修改商城参数配置成功','admin','2020-03-15 05:17:48'),(35,'admin/login/index','127.0.0.1','系统管理','用户登录系统后台成功','admin','2020-03-15 07:41:51');

#
# Structure for table "mj_system_menu"
#

DROP TABLE IF EXISTS `mj_system_menu`;
CREATE TABLE `mj_system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned DEFAULT '0' COMMENT '父ID',
  `title` varchar(100) DEFAULT '' COMMENT '名称',
  `node` varchar(200) DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) DEFAULT '_self' COMMENT '打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_system_menu_node` (`node`(191)) USING BTREE,
  KEY `idx_system_menu_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COMMENT='系统-菜单';

#
# Data for table "mj_system_menu"
#

INSERT INTO `mj_system_menu` VALUES (1,0,'后台首页','','','admin/index/main','','_self',500,1,'2018-09-05 17:59:38'),(2,0,'系统管理','','','#','','_self',100,1,'2018-09-05 18:04:52'),(3,4,'系统菜单管理','','layui-icon layui-icon-layouts','admin/menu/index','','_self',1,1,'2018-09-05 18:05:26'),(4,2,'系统配置','','','#','','_self',20,1,'2018-09-05 18:07:17'),(5,12,'系统用户管理','','layui-icon layui-icon-username','admin/user/index','','_self',1,1,'2018-09-06 11:10:42'),(7,12,'访问权限管理','','layui-icon layui-icon-vercode','admin/auth/index','','_self',2,1,'2018-09-06 15:17:14'),(11,4,'系统参数配置','','layui-icon layui-icon-set','admin/config/info','','_self',4,1,'2018-09-06 16:43:47'),(12,2,'权限管理','','','#','','_self',10,1,'2018-09-06 18:01:31'),(13,0,'商城管理','','','#','','_self',400,1,'2018-10-12 13:56:29'),(14,48,'商品信息管理','','layui-icon layui-icon-component','store/goods/index','','_self',3,1,'2018-10-12 13:56:48'),(27,4,'系统任务管理','','layui-icon layui-icon-log','admin/queue/index','','_self',3,1,'2018-11-29 11:13:34'),(42,48,'会员信息管理','','layui-icon layui-icon-user','store/member/index','','_self',1,1,'2019-01-22 14:24:23'),(43,48,'订单记录管理','','layui-icon layui-icon-template-1','store/order/index','','_self',2,1,'2019-01-22 14:46:22'),(44,48,'商品分类管理','','layui-icon layui-icon-app','store/goods_cate/index','','_self',4,1,'2019-01-23 10:41:06'),(45,47,'商城参数配置','','layui-icon layui-icon-set','store/config/index','','_self',5,1,'2019-01-24 16:47:33'),(46,47,'短信发送记录','','layui-icon layui-icon-console','store/message/index','','_self',4,1,'2019-01-24 18:09:58'),(47,13,'商城配置','','','#','','_self',10,1,'2019-01-25 16:47:49'),(48,13,'数据管理','','','#','','_self',30,1,'2019-01-25 16:48:35'),(49,4,'系统日志管理','','layui-icon layui-icon-form','admin/oplog/index','','_self',2,1,'2019-02-18 12:56:56'),(50,47,'快递公司管理','','layui-icon layui-icon-form','store/express_company/index','','_self',3,1,'2019-04-01 17:10:59'),(52,47,'邮费模板管理','','layui-icon layui-icon-fonts-clear','store/express_template/index','','_self',1,1,'2019-04-23 13:17:10'),(53,0,'样版','','','#','','_self',300,1,'2020-02-27 11:30:48'),(54,53,'样版1','','','#','','_self',0,1,'2020-02-27 11:33:51'),(55,54,'增删改查','','layui-icon layui-icon-template-1','model/model1/index','','_self',0,1,'2020-02-27 18:05:43'),(56,54,'样版分类','','fa fa-bars','model/model1_cate/index','','_self',0,1,'2020-02-27 22:03:49'),(57,13,'代理管理','','','#','','_self',20,1,'2020-03-06 12:09:26'),(58,57,'代理商列表','','layui-icon layui-icon-group','store/agent/index','','_self',0,1,'2020-03-06 12:11:30'),(59,57,'代理申请列表','','fa fa-check-square-o','store/agent_apply/index','','_self',0,1,'2020-03-07 02:11:10'),(60,57,'代理等级列表','','fa fa-cubes','store/agent_level/index','','_self',0,1,'2020-03-07 05:46:54'),(61,57,'提现申请列表','','layui-icon layui-icon-dollar','store/agent_cash_apply/index','','_self',0,1,'2020-03-07 09:47:55'),(62,57,'代理分红列表','','layui-icon layui-icon-rmb','store/agent_bonus/index','','_self',0,1,'2020-03-07 09:53:01');

#
# Structure for table "mj_system_queue"
#

DROP TABLE IF EXISTS `mj_system_queue`;
CREATE TABLE `mj_system_queue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '任务名称',
  `data` longtext NOT NULL COMMENT '执行参数',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '任务状态(1新任务,2处理中,3成功,4失败)',
  `preload` varchar(500) DEFAULT '' COMMENT '执行内容',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '执行时间',
  `double` tinyint(1) DEFAULT '1' COMMENT '单例模式',
  `desc` varchar(500) DEFAULT '' COMMENT '状态描述',
  `start_at` varchar(20) DEFAULT '' COMMENT '开始时间',
  `end_at` varchar(20) DEFAULT '' COMMENT '结束时间',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_system_queue_double` (`double`) USING BTREE,
  KEY `idx_system_queue_time` (`time`) USING BTREE,
  KEY `idx_system_queue_title` (`title`) USING BTREE,
  KEY `idx_system_queue_create_at` (`create_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='系统-任务';

#
# Data for table "mj_system_queue"
#

INSERT INTO `mj_system_queue` VALUES (11,'删除无效的订单信息','',3,'',0,1,'自动删除24小时前已经取消的订单：\r\n123','','','2020-03-11 02:52:23'),(12,'取消无效的订单信息','',3,'',0,1,'共计自动取消了30分钟未支付的1笔订单！','','','2020-03-15 05:43:23'),(13,'删除无效的订单信息','',3,'',0,1,'自动删除24小时前已经取消的订单：\r\n4527454523','','','2020-03-15 05:43:23'),(14,'取消无效的订单信息','',3,'',0,1,'共计自动取消了30分钟未支付的1笔订单！','','','2020-03-15 06:14:23');

#
# Structure for table "mj_system_user"
#

DROP TABLE IF EXISTS `mj_system_user`;
CREATE TABLE `mj_system_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '用户账号',
  `password` varchar(32) DEFAULT '' COMMENT '用户密码',
  `nickname` varchar(50) DEFAULT '' COMMENT '用户昵称',
  `authorize` varchar(255) DEFAULT '' COMMENT '权限授权',
  `contact_qq` varchar(20) DEFAULT '' COMMENT '联系QQ',
  `contact_mail` varchar(20) DEFAULT '' COMMENT '联系邮箱',
  `contact_phone` varchar(20) DEFAULT '' COMMENT '联系手机',
  `login_ip` varchar(255) DEFAULT '' COMMENT '登录地址',
  `login_at` varchar(20) DEFAULT '' COMMENT '登录时间',
  `login_num` bigint(20) DEFAULT '0' COMMENT '登录次数',
  `describe` varchar(255) DEFAULT '' COMMENT '备注说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态(0禁用,1启用)',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '删除(1删除,0未删)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_system_user_username` (`username`) USING BTREE,
  KEY `idx_system_user_deleted` (`is_deleted`) USING BTREE,
  KEY `idx_system_user_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8mb4 COMMENT='系统-用户';

#
# Data for table "mj_system_user"
#

INSERT INTO `mj_system_user` VALUES (10000,'admin','21232f297a57a5a743894a0e4a801fc3','系统管理员','','','','','127.0.0.1','2020-03-15 07:41:51',1065,'',1,0,'2015-11-13 15:14:22'),(10001,'tttttt','','ttt','1','','','','','',0,'',0,0,'2020-03-10 03:26:00');
