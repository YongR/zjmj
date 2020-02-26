/*
Navicat MySQL Data Transfer

Source Server         : loca
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : zjmj

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-02-26 22:20:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mj_store_express_company
-- ----------------------------
DROP TABLE IF EXISTS `mj_store_express_company`;
CREATE TABLE `mj_store_express_company` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `express_title` varchar(50) DEFAULT '' COMMENT '快递公司名称',
  `express_code` varchar(50) DEFAULT '' COMMENT '快递公司代码',
  `express_desc` varchar(512) DEFAULT '' COMMENT '快递公司描述',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0.无效,1.有效)',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='商城-快递-公司';

-- ----------------------------
-- Records of mj_store_express_company
-- ----------------------------
INSERT INTO `mj_store_express_company` VALUES ('5', 'AAE全球专递', 'aae', null, '0', '0', '0', '2017-09-12 11:53:40');
INSERT INTO `mj_store_express_company` VALUES ('6', '安捷快递', 'anjie', '', '0', '0', '0', '2017-09-13 15:27:26');
INSERT INTO `mj_store_express_company` VALUES ('7', '安信达快递', 'anxindakuaixi', null, '0', '0', '0', '2017-09-13 16:05:19');
INSERT INTO `mj_store_express_company` VALUES ('8', '彪记快递', 'biaojikuaidi', null, '0', '0', '0', '2017-09-13 16:05:26');
INSERT INTO `mj_store_express_company` VALUES ('9', 'BHT', 'bht', '', '0', '0', '0', '2017-09-13 16:05:37');
INSERT INTO `mj_store_express_company` VALUES ('10', '百福东方国际物流', 'baifudongfang', null, '0', '0', '0', '2017-09-13 16:05:41');
INSERT INTO `mj_store_express_company` VALUES ('11', '中国东方（COE）', 'coe', null, '0', '0', '0', '2017-09-13 16:05:48');
INSERT INTO `mj_store_express_company` VALUES ('12', '长宇物流', 'changyuwuliu', null, '0', '0', '0', '2017-09-13 16:05:58');
INSERT INTO `mj_store_express_company` VALUES ('13', '大田物流', 'datianwuliu', null, '0', '0', '0', '2017-09-13 16:06:06');
INSERT INTO `mj_store_express_company` VALUES ('14', '德邦物流', 'debangwuliu', '', '0', '1', '0', '2017-09-13 16:06:14');
INSERT INTO `mj_store_express_company` VALUES ('15', 'DHL', 'dhl', null, '0', '0', '0', '2017-09-13 16:06:24');
INSERT INTO `mj_store_express_company` VALUES ('16', 'DPEX', 'dpex', null, '0', '0', '0', '2017-09-13 16:06:29');
INSERT INTO `mj_store_express_company` VALUES ('17', 'd速快递', 'dsukuaidi', null, '0', '0', '0', '2017-09-13 16:06:34');
INSERT INTO `mj_store_express_company` VALUES ('18', '递四方', 'disifang', null, '0', '0', '0', '2017-09-13 16:06:40');
INSERT INTO `mj_store_express_company` VALUES ('19', 'EMS快递', 'ems', '', '1', '0', '0', '2017-09-13 16:06:47');
INSERT INTO `mj_store_express_company` VALUES ('20', 'FEDEX（国外）', 'fedex', null, '0', '0', '0', '2017-09-13 16:06:56');
INSERT INTO `mj_store_express_company` VALUES ('21', '飞康达物流', 'feikangda', null, '0', '0', '0', '2017-09-13 16:07:03');
INSERT INTO `mj_store_express_company` VALUES ('22', '凤凰快递', 'fenghuangkuaidi', null, '0', '0', '0', '2017-09-13 16:07:10');
INSERT INTO `mj_store_express_company` VALUES ('23', '飞快达', 'feikuaida', null, '0', '0', '0', '2017-09-13 16:07:16');
INSERT INTO `mj_store_express_company` VALUES ('24', '国通快递', 'guotongkuaidi', null, '0', '0', '0', '2017-09-13 16:07:27');
INSERT INTO `mj_store_express_company` VALUES ('25', '港中能达物流', 'ganzhongnengda', null, '0', '0', '0', '2017-09-13 16:07:33');
INSERT INTO `mj_store_express_company` VALUES ('26', '广东邮政物流', 'guangdongyouzhengwuliu', null, '0', '0', '0', '2017-09-13 16:08:22');
INSERT INTO `mj_store_express_company` VALUES ('27', '共速达', 'gongsuda', null, '0', '0', '0', '2017-09-13 16:08:48');
INSERT INTO `mj_store_express_company` VALUES ('28', '汇通快运', 'huitongkuaidi', null, '0', '0', '0', '2017-09-13 16:08:56');
INSERT INTO `mj_store_express_company` VALUES ('29', '恒路物流', 'hengluwuliu', null, '0', '0', '0', '2017-09-13 16:09:02');
INSERT INTO `mj_store_express_company` VALUES ('30', '华夏龙物流', 'huaxialongwuliu', null, '0', '0', '0', '2017-09-13 16:09:12');
INSERT INTO `mj_store_express_company` VALUES ('31', '海红', 'haihongwangsong', null, '0', '0', '0', '2017-09-13 16:09:20');
INSERT INTO `mj_store_express_company` VALUES ('32', '海外环球', 'haiwaihuanqiu', null, '0', '0', '0', '2017-09-13 16:09:27');
INSERT INTO `mj_store_express_company` VALUES ('33', '佳怡物流', 'jiayiwuliu', null, '0', '0', '0', '2017-09-13 16:09:35');
INSERT INTO `mj_store_express_company` VALUES ('34', '京广速递', 'jinguangsudikuaijian', null, '0', '0', '0', '2017-09-13 16:09:42');
INSERT INTO `mj_store_express_company` VALUES ('35', '急先达', 'jixianda', null, '0', '0', '0', '2017-09-13 16:09:49');
INSERT INTO `mj_store_express_company` VALUES ('36', '佳吉物流', 'jjwl', null, '0', '0', '0', '2017-09-13 16:10:01');
INSERT INTO `mj_store_express_company` VALUES ('37', '加运美物流', 'jymwl', null, '0', '0', '0', '2017-09-13 16:10:13');
INSERT INTO `mj_store_express_company` VALUES ('38', '金大物流', 'jindawuliu', null, '0', '0', '0', '2017-09-13 16:10:22');
INSERT INTO `mj_store_express_company` VALUES ('39', '嘉里大通', 'jialidatong', null, '0', '0', '0', '2017-09-13 16:10:33');
INSERT INTO `mj_store_express_company` VALUES ('40', '晋越快递', 'jykd', null, '0', '0', '0', '2017-09-13 16:10:40');
INSERT INTO `mj_store_express_company` VALUES ('41', '快捷速递', 'kuaijiesudi', null, '0', '0', '0', '2017-09-13 16:10:49');
INSERT INTO `mj_store_express_company` VALUES ('42', '联邦快递（国内）', 'lianb', null, '0', '0', '0', '2017-09-13 16:10:58');
INSERT INTO `mj_store_express_company` VALUES ('43', '联昊通物流', 'lianhaowuliu', null, '0', '0', '0', '2017-09-13 16:11:07');
INSERT INTO `mj_store_express_company` VALUES ('44', '龙邦物流', 'longbanwuliu', null, '0', '0', '0', '2017-09-13 16:11:15');
INSERT INTO `mj_store_express_company` VALUES ('45', '立即送', 'lijisong', null, '0', '0', '0', '2017-09-13 16:11:25');
INSERT INTO `mj_store_express_company` VALUES ('46', '乐捷递', 'lejiedi', null, '0', '0', '0', '2017-09-13 16:11:36');
INSERT INTO `mj_store_express_company` VALUES ('47', '民航快递', 'minghangkuaidi', null, '0', '0', '0', '2017-09-13 16:11:45');
INSERT INTO `mj_store_express_company` VALUES ('48', '美国快递', 'meiguokuaidi', null, '0', '0', '0', '2017-09-13 16:11:53');
INSERT INTO `mj_store_express_company` VALUES ('49', '门对门', 'menduimen', null, '0', '0', '0', '2017-09-13 16:12:01');
INSERT INTO `mj_store_express_company` VALUES ('50', 'OCS', 'ocs', null, '0', '0', '0', '2017-09-13 16:12:10');
INSERT INTO `mj_store_express_company` VALUES ('51', '配思货运', 'peisihuoyunkuaidi', null, '0', '0', '0', '2017-09-13 16:12:18');
INSERT INTO `mj_store_express_company` VALUES ('52', '全晨快递', 'quanchenkuaidi', null, '0', '0', '0', '2017-09-13 16:12:26');
INSERT INTO `mj_store_express_company` VALUES ('53', '全峰快递', 'quanfengkuaidi', null, '0', '0', '0', '2017-09-13 16:12:34');
INSERT INTO `mj_store_express_company` VALUES ('54', '全际通物流', 'quanjitong', null, '0', '0', '0', '2017-09-13 16:12:41');
INSERT INTO `mj_store_express_company` VALUES ('55', '全日通快递', 'quanritongkuaidi', null, '0', '0', '0', '2017-09-13 16:12:49');
INSERT INTO `mj_store_express_company` VALUES ('56', '全一快递', 'quanyikuaidi', null, '0', '0', '0', '2017-09-13 16:12:56');
INSERT INTO `mj_store_express_company` VALUES ('57', '如风达', 'rufengda', null, '0', '0', '0', '2017-09-13 16:13:03');
INSERT INTO `mj_store_express_company` VALUES ('58', '三态速递', 'santaisudi', null, '0', '0', '0', '2017-09-13 16:13:15');
INSERT INTO `mj_store_express_company` VALUES ('59', '盛辉物流', 'shenghuiwuliu', null, '0', '0', '0', '2017-09-13 16:13:22');
INSERT INTO `mj_store_express_company` VALUES ('60', '申通', 'shentong', null, '0', '0', '0', '2017-09-13 16:13:34');
INSERT INTO `mj_store_express_company` VALUES ('61', '顺丰', 'shunfeng', '', '0', '0', '0', '2017-09-13 16:13:41');
INSERT INTO `mj_store_express_company` VALUES ('62', '速尔物流', 'sue', null, '0', '0', '0', '2017-09-13 16:13:48');
INSERT INTO `mj_store_express_company` VALUES ('63', '盛丰物流', 'shengfeng', null, '0', '0', '0', '2017-09-13 16:13:55');
INSERT INTO `mj_store_express_company` VALUES ('64', '赛澳递', 'saiaodi', null, '0', '0', '0', '2017-09-13 16:14:02');
INSERT INTO `mj_store_express_company` VALUES ('65', '天地华宇', 'tiandihuayu', null, '0', '0', '0', '2017-09-13 16:14:11');
INSERT INTO `mj_store_express_company` VALUES ('66', '天天快递', 'tiantian', null, '0', '0', '0', '2017-09-13 16:14:19');
INSERT INTO `mj_store_express_company` VALUES ('67', 'TNT', 'tnt', null, '0', '0', '0', '2017-09-13 16:14:26');
INSERT INTO `mj_store_express_company` VALUES ('68', 'UPS', 'ups', null, '0', '0', '0', '2017-09-13 16:14:29');
INSERT INTO `mj_store_express_company` VALUES ('69', '万家物流', 'wanjiawuliu', null, '0', '0', '0', '2017-09-13 16:14:37');
INSERT INTO `mj_store_express_company` VALUES ('70', '文捷航空速递', 'wenjiesudi', null, '0', '0', '0', '2017-09-13 16:14:46');
INSERT INTO `mj_store_express_company` VALUES ('71', '伍圆', 'wuyuan', null, '0', '0', '0', '2017-09-13 16:14:52');
INSERT INTO `mj_store_express_company` VALUES ('72', '万象物流', 'wxwl', null, '0', '0', '0', '2017-09-13 16:15:00');
INSERT INTO `mj_store_express_company` VALUES ('73', '新邦物流', 'xinbangwuliu', null, '0', '0', '0', '2017-09-13 16:15:06');
INSERT INTO `mj_store_express_company` VALUES ('74', '信丰物流', 'xinfengwuliu', null, '0', '0', '0', '2017-09-13 16:15:15');
INSERT INTO `mj_store_express_company` VALUES ('75', '亚风速递', 'yafengsudi', null, '0', '0', '0', '2017-09-13 16:15:23');
INSERT INTO `mj_store_express_company` VALUES ('76', '一邦速递', 'yibangwuliu', null, '0', '0', '0', '2017-09-13 16:15:30');
INSERT INTO `mj_store_express_company` VALUES ('77', '优速物流', 'youshuwuliu', null, '0', '0', '0', '2017-09-13 16:15:36');
INSERT INTO `mj_store_express_company` VALUES ('78', '邮政包裹挂号信', 'youzhengguonei', null, '0', '3', '0', '2017-09-13 16:15:44');
INSERT INTO `mj_store_express_company` VALUES ('79', '邮政国际包裹挂号信', 'youzhengguoji', null, '0', '2', '0', '2017-09-13 16:15:51');
INSERT INTO `mj_store_express_company` VALUES ('80', '远成物流', 'yuanchengwuliu', null, '0', '0', '0', '2017-09-13 16:15:57');
INSERT INTO `mj_store_express_company` VALUES ('81', '圆通速递', 'yuantong', '', '1', '1', '0', '2017-09-13 16:16:03');
INSERT INTO `mj_store_express_company` VALUES ('82', '源伟丰快递', 'yuanweifeng', null, '0', '0', '0', '2017-09-13 16:16:10');
INSERT INTO `mj_store_express_company` VALUES ('83', '元智捷诚快递', 'yuanzhijiecheng', null, '0', '0', '0', '2017-09-13 16:16:17');
INSERT INTO `mj_store_express_company` VALUES ('84', '韵达快运', 'yunda', null, '0', '0', '0', '2017-09-13 16:16:24');
INSERT INTO `mj_store_express_company` VALUES ('85', '运通快递', 'yuntongkuaidi', null, '0', '0', '0', '2017-09-13 16:16:33');
INSERT INTO `mj_store_express_company` VALUES ('86', '越丰物流', 'yuefengwuliu', null, '0', '0', '0', '2017-09-13 16:16:40');
INSERT INTO `mj_store_express_company` VALUES ('87', '源安达', 'yad', null, '0', '0', '0', '2017-09-13 16:16:47');
INSERT INTO `mj_store_express_company` VALUES ('88', '银捷速递', 'yinjiesudi', null, '0', '0', '0', '2017-09-13 16:16:56');
INSERT INTO `mj_store_express_company` VALUES ('89', '宅急送', 'zhaijisong', null, '0', '0', '0', '2017-09-13 16:17:03');
INSERT INTO `mj_store_express_company` VALUES ('90', '中铁快运', 'zhongtiekuaiyun', null, '0', '0', '0', '2017-09-13 16:17:10');
INSERT INTO `mj_store_express_company` VALUES ('91', '中通速递', 'zhongtong', '', '0', '0', '0', '2017-09-13 16:17:16');
INSERT INTO `mj_store_express_company` VALUES ('92', '中邮物流', 'zhongyouwuliu', null, '0', '0', '0', '2017-09-13 16:17:27');
INSERT INTO `mj_store_express_company` VALUES ('93', '忠信达', 'zhongxinda', null, '0', '0', '0', '2017-09-13 16:17:34');
INSERT INTO `mj_store_express_company` VALUES ('94', '芝麻开门', 'zhimakaimen', '', '1', '0', '0', '2017-09-13 16:17:41');

-- ----------------------------
-- Table structure for mj_store_express_template
-- ----------------------------
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商城-快递-模板';

-- ----------------------------
-- Records of mj_store_express_template
-- ----------------------------

-- ----------------------------
-- Table structure for mj_store_goods
-- ----------------------------
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品-记录';

-- ----------------------------
-- Records of mj_store_goods
-- ----------------------------

-- ----------------------------
-- Table structure for mj_store_goods_cate
-- ----------------------------
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品-分类';

-- ----------------------------
-- Records of mj_store_goods_cate
-- ----------------------------

-- ----------------------------
-- Table structure for mj_store_goods_list
-- ----------------------------
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品-详情';

-- ----------------------------
-- Records of mj_store_goods_list
-- ----------------------------

-- ----------------------------
-- Table structure for mj_store_goods_stock
-- ----------------------------
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品-入库';

-- ----------------------------
-- Records of mj_store_goods_stock
-- ----------------------------

-- ----------------------------
-- Table structure for mj_store_member
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='会员-记录';

-- ----------------------------
-- Records of mj_store_member
-- ----------------------------
INSERT INTO `mj_store_member` VALUES ('1', '1', '', 'yong', '17600221922', '865439892', '1', '0000-00-00', '2020-02-24 19:11:59');

-- ----------------------------
-- Table structure for mj_store_member_address
-- ----------------------------
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

-- ----------------------------
-- Records of mj_store_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for mj_store_member_sms_history
-- ----------------------------
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

-- ----------------------------
-- Records of mj_store_member_sms_history
-- ----------------------------

-- ----------------------------
-- Table structure for mj_store_order
-- ----------------------------
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单-记录';

-- ----------------------------
-- Records of mj_store_order
-- ----------------------------

-- ----------------------------
-- Table structure for mj_store_order_list
-- ----------------------------
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

-- ----------------------------
-- Records of mj_store_order_list
-- ----------------------------

-- ----------------------------
-- Table structure for mj_system_auth
-- ----------------------------
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

-- ----------------------------
-- Records of mj_system_auth
-- ----------------------------
INSERT INTO `mj_system_auth` VALUES ('1', '系统菜单管理员', '1', '0', '只管理系统菜单', '2020-02-26 18:21:22');

-- ----------------------------
-- Table structure for mj_system_auth_node
-- ----------------------------
DROP TABLE IF EXISTS `mj_system_auth_node`;
CREATE TABLE `mj_system_auth_node` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色',
  `node` varchar(200) DEFAULT NULL COMMENT '节点',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_system_auth_auth` (`auth`) USING BTREE,
  KEY `idx_system_auth_node` (`node`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='系统-权限-授权';

-- ----------------------------
-- Records of mj_system_auth_node
-- ----------------------------
INSERT INTO `mj_system_auth_node` VALUES ('1', '1', 'admin');
INSERT INTO `mj_system_auth_node` VALUES ('2', '1', 'admin/menu');
INSERT INTO `mj_system_auth_node` VALUES ('3', '1', 'admin/menu/index');
INSERT INTO `mj_system_auth_node` VALUES ('4', '1', 'admin/menu/add');
INSERT INTO `mj_system_auth_node` VALUES ('5', '1', 'admin/menu/edit');
INSERT INTO `mj_system_auth_node` VALUES ('6', '1', 'admin/menu/resume');
INSERT INTO `mj_system_auth_node` VALUES ('7', '1', 'admin/menu/forbid');
INSERT INTO `mj_system_auth_node` VALUES ('8', '1', 'admin/menu/remove');

-- ----------------------------
-- Table structure for mj_system_config
-- ----------------------------
DROP TABLE IF EXISTS `mj_system_config`;
CREATE TABLE `mj_system_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '配置名',
  `value` varchar(500) DEFAULT '' COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_system_config_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COMMENT='系统-配置';

-- ----------------------------
-- Records of mj_system_config
-- ----------------------------
INSERT INTO `mj_system_config` VALUES ('1', 'app_name', '指尖牧匠');
INSERT INTO `mj_system_config` VALUES ('2', 'site_name', '指尖牧匠');
INSERT INTO `mj_system_config` VALUES ('3', 'app_version', '1.0');
INSERT INTO `mj_system_config` VALUES ('4', 'site_copy', '©版权所有 ...');
INSERT INTO `mj_system_config` VALUES ('5', 'site_icon', 'http://zjmj.cn/upload/9a34fd343f145afd/e4611c94a56f3a24.png');
INSERT INTO `mj_system_config` VALUES ('7', 'miitbeian', '...');
INSERT INTO `mj_system_config` VALUES ('8', 'storage_type', 'local');
INSERT INTO `mj_system_config` VALUES ('9', 'storage_local_exts', 'doc,gif,icon,jpg,mp3,mp4,p12,pem,png,rar');
INSERT INTO `mj_system_config` VALUES ('10', 'storage_qiniu_bucket', 'https');
INSERT INTO `mj_system_config` VALUES ('11', 'storage_qiniu_domain', '用你自己的吧');
INSERT INTO `mj_system_config` VALUES ('12', 'storage_qiniu_access_key', '用你自己的吧');
INSERT INTO `mj_system_config` VALUES ('13', 'storage_qiniu_secret_key', '用你自己的吧');
INSERT INTO `mj_system_config` VALUES ('14', 'storage_oss_bucket', 'cuci-mytest');
INSERT INTO `mj_system_config` VALUES ('15', 'storage_oss_endpoint', 'oss-cn-hangzhou.aliyuncs.com');
INSERT INTO `mj_system_config` VALUES ('16', 'storage_oss_domain', '用你自己的吧');
INSERT INTO `mj_system_config` VALUES ('17', 'storage_oss_keyid', '用你自己的吧');
INSERT INTO `mj_system_config` VALUES ('18', 'storage_oss_secret', '用你自己的吧');
INSERT INTO `mj_system_config` VALUES ('36', 'storage_oss_is_https', 'http');
INSERT INTO `mj_system_config` VALUES ('43', 'storage_qiniu_region', '华东');
INSERT INTO `mj_system_config` VALUES ('44', 'storage_qiniu_is_https', 'https');
INSERT INTO `mj_system_config` VALUES ('45', 'wechat_mch_id', '1332187001');
INSERT INTO `mj_system_config` VALUES ('46', 'wechat_mch_key', 'A82DC5BD1F3359081049C568D8502BC5');
INSERT INTO `mj_system_config` VALUES ('47', 'wechat_mch_ssl_type', 'p12');
INSERT INTO `mj_system_config` VALUES ('48', 'wechat_mch_ssl_p12', '65b8e4f56718182d/1bc857ee646aa15d.p12');
INSERT INTO `mj_system_config` VALUES ('49', 'wechat_mch_ssl_key', 'cc2e3e1345123930/c407d033294f283d.pem');
INSERT INTO `mj_system_config` VALUES ('50', 'wechat_mch_ssl_cer', '966eaf89299e9c95/7014872cc109b29a.pem');
INSERT INTO `mj_system_config` VALUES ('51', 'wechat_token', 'mytoken');
INSERT INTO `mj_system_config` VALUES ('52', 'wechat_appid', 'wx60a43dd8161666d4');
INSERT INTO `mj_system_config` VALUES ('53', 'wechat_appsecret', '9978422e0e431643d4b42868d183d60b');
INSERT INTO `mj_system_config` VALUES ('54', 'wechat_encodingaeskey', '');
INSERT INTO `mj_system_config` VALUES ('55', 'wechat_push_url', '消息推送地址：http://127.0.0.1:8000/wechat/api.push');
INSERT INTO `mj_system_config` VALUES ('56', 'wechat_type', 'thr');
INSERT INTO `mj_system_config` VALUES ('57', 'wechat_thr_appid', 'wx60a43dd8161666d4');
INSERT INTO `mj_system_config` VALUES ('58', 'wechat_thr_appkey', '5caf4b0727f6e46a7e6ccbe773cc955d');
INSERT INTO `mj_system_config` VALUES ('60', 'wechat_thr_appurl', '消息推送地址：http://127.0.0.1:2314/wechat/api.push');
INSERT INTO `mj_system_config` VALUES ('61', 'component_appid', 'wx28b58798480874f9');
INSERT INTO `mj_system_config` VALUES ('62', 'component_appsecret', '8d0e1ec14ea0adc5027dd0ad82c64bc9');
INSERT INTO `mj_system_config` VALUES ('63', 'component_token', 'P8QHTIxpBEq88IrxatqhgpBm2OAQROkI');
INSERT INTO `mj_system_config` VALUES ('64', 'component_encodingaeskey', 'L5uFIa0U6KLalPyXckyqoVIJYLhsfrg8k9YzybZIHsx');
INSERT INTO `mj_system_config` VALUES ('65', 'system_message_state', '0');
INSERT INTO `mj_system_config` VALUES ('66', 'sms_zt_username', '可以找CUCI申请');
INSERT INTO `mj_system_config` VALUES ('67', 'sms_zt_password', '可以找CUCI申请');
INSERT INTO `mj_system_config` VALUES ('68', 'sms_reg_template', '您的验证码为{code}，请在十分钟内完成操作！');
INSERT INTO `mj_system_config` VALUES ('69', 'sms_secure', '可以找CUCI申请');
INSERT INTO `mj_system_config` VALUES ('70', 'store_title', '测试商城');
INSERT INTO `mj_system_config` VALUES ('71', 'store_order_wait_time', '0.50');
INSERT INTO `mj_system_config` VALUES ('72', 'store_order_clear_time', '24.00');
INSERT INTO `mj_system_config` VALUES ('73', 'store_order_confirm_time', '60.00');
INSERT INTO `mj_system_config` VALUES ('74', 'sms_zt_username2', '可以找CUCI申请2');
INSERT INTO `mj_system_config` VALUES ('75', 'sms_zt_password2', '可以找CUCI申请2');
INSERT INTO `mj_system_config` VALUES ('76', 'sms_secure2', '可以找CUCI申请2');
INSERT INTO `mj_system_config` VALUES ('77', 'sms_reg_template2', '您的验证码为{code}，请在十分钟内完成操作！2');
INSERT INTO `mj_system_config` VALUES ('78', 'michat_appid', '2882303761518074614');
INSERT INTO `mj_system_config` VALUES ('79', 'michat_appkey', '5861807470614');
INSERT INTO `mj_system_config` VALUES ('80', 'michat_appsecert', 'CP/WUTUgDuyOxgLQ5ztesg==');
INSERT INTO `mj_system_config` VALUES ('81', '_token_', 'csrf5e5640e24d353');

-- ----------------------------
-- Table structure for mj_system_data
-- ----------------------------
DROP TABLE IF EXISTS `mj_system_data`;
CREATE TABLE `mj_system_data` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置名',
  `value` longtext COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_system_data_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统-数据';

-- ----------------------------
-- Records of mj_system_data
-- ----------------------------
INSERT INTO `mj_system_data` VALUES ('1', 'menudata', '[{\"name\":\"请输入名称\",\"type\":\"scancode_push\",\"key\":\"scancode_push\"}]');

-- ----------------------------
-- Table structure for mj_system_log
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='系统-日志';

-- ----------------------------
-- Records of mj_system_log
-- ----------------------------
INSERT INTO `mj_system_log` VALUES ('1', 'admin/login/index', '127.0.0.1', '系统管理', '用户登录系统后台成功', 'admin', '2020-02-25 00:28:37');
INSERT INTO `mj_system_log` VALUES ('2', 'admin/login/index', '127.0.0.1', '系统管理', '用户登录系统后台成功', 'admin', '2020-02-25 02:01:02');
INSERT INTO `mj_system_log` VALUES ('3', 'admin/login/index', '127.0.0.1', '系统管理', '用户登录系统后台成功', 'admin', '2020-02-26 17:21:56');
INSERT INTO `mj_system_log` VALUES ('4', 'admin/login/index', '127.0.0.1', '系统管理', '用户登录系统后台成功', 'admin', '2020-02-26 18:07:54');
INSERT INTO `mj_system_log` VALUES ('5', 'admin/login/index', '127.0.0.1', '系统管理', '用户登录系统后台成功', 'admin', '2020-02-26 18:29:34');
INSERT INTO `mj_system_log` VALUES ('6', 'admin/login/index', '127.0.0.1', '系统管理', '用户登录系统后台成功', 'admin', '2020-02-26 18:30:33');
INSERT INTO `mj_system_log` VALUES ('7', 'admin/login/index', '127.0.0.1', '系统管理', '用户登录系统后台成功', 'admin', '2020-02-26 18:31:13');
INSERT INTO `mj_system_log` VALUES ('8', 'admin/login/index', '127.0.0.1', '系统管理', '用户登录系统后台成功', 'yongr', '2020-02-26 19:12:53');
INSERT INTO `mj_system_log` VALUES ('9', 'admin/login/index', '127.0.0.1', '系统管理', '用户登录系统后台成功', 'admin', '2020-02-26 19:13:30');
INSERT INTO `mj_system_log` VALUES ('10', 'admin/login/index', '127.0.0.1', '系统管理', '用户登录系统后台成功', 'yongr', '2020-02-26 19:14:55');
INSERT INTO `mj_system_log` VALUES ('11', 'admin/login/index', '127.0.0.1', '系统管理', '用户登录系统后台成功', 'admin', '2020-02-26 19:15:15');

-- ----------------------------
-- Table structure for mj_system_menu
-- ----------------------------
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

-- ----------------------------
-- Records of mj_system_menu
-- ----------------------------
INSERT INTO `mj_system_menu` VALUES ('1', '0', '后台首页', '', '', 'admin/index/main', '', '_self', '500', '1', '2018-09-05 17:59:38');
INSERT INTO `mj_system_menu` VALUES ('2', '0', '系统管理', '', '', '#', '', '_self', '100', '1', '2018-09-05 18:04:52');
INSERT INTO `mj_system_menu` VALUES ('3', '4', '系统菜单管理', '', 'layui-icon layui-icon-layouts', 'admin/menu/index', '', '_self', '1', '1', '2018-09-05 18:05:26');
INSERT INTO `mj_system_menu` VALUES ('4', '2', '系统配置', '', '', '#', '', '_self', '20', '1', '2018-09-05 18:07:17');
INSERT INTO `mj_system_menu` VALUES ('5', '12', '系统用户管理', '', 'layui-icon layui-icon-username', 'admin/user/index', '', '_self', '1', '1', '2018-09-06 11:10:42');
INSERT INTO `mj_system_menu` VALUES ('7', '12', '访问权限管理', '', 'layui-icon layui-icon-vercode', 'admin/auth/index', '', '_self', '2', '1', '2018-09-06 15:17:14');
INSERT INTO `mj_system_menu` VALUES ('11', '4', '系统参数配置', '', 'layui-icon layui-icon-set', 'admin/config/info', '', '_self', '4', '1', '2018-09-06 16:43:47');
INSERT INTO `mj_system_menu` VALUES ('12', '2', '权限管理', '', '', '#', '', '_self', '10', '1', '2018-09-06 18:01:31');
INSERT INTO `mj_system_menu` VALUES ('13', '0', '商城管理', '', '', '#', '', '_self', '400', '1', '2018-10-12 13:56:29');
INSERT INTO `mj_system_menu` VALUES ('14', '48', '商品信息管理', '', 'layui-icon layui-icon-component', 'store/goods/index', '', '_self', '3', '1', '2018-10-12 13:56:48');
INSERT INTO `mj_system_menu` VALUES ('27', '4', '系统任务管理', '', 'layui-icon layui-icon-log', 'admin/queue/index', '', '_self', '3', '1', '2018-11-29 11:13:34');
INSERT INTO `mj_system_menu` VALUES ('42', '48', '会员信息管理', '', 'layui-icon layui-icon-user', 'store/member/index', '', '_self', '1', '1', '2019-01-22 14:24:23');
INSERT INTO `mj_system_menu` VALUES ('43', '48', '订单记录管理', '', 'layui-icon layui-icon-template-1', 'store/order/index', '', '_self', '2', '1', '2019-01-22 14:46:22');
INSERT INTO `mj_system_menu` VALUES ('44', '48', '商品分类管理', '', 'layui-icon layui-icon-app', 'store/goods_cate/index', '', '_self', '4', '1', '2019-01-23 10:41:06');
INSERT INTO `mj_system_menu` VALUES ('45', '47', '商城参数配置', '', 'layui-icon layui-icon-set', 'store/config/index', '', '_self', '5', '1', '2019-01-24 16:47:33');
INSERT INTO `mj_system_menu` VALUES ('46', '47', '短信发送记录', '', 'layui-icon layui-icon-console', 'store/message/index', '', '_self', '4', '1', '2019-01-24 18:09:58');
INSERT INTO `mj_system_menu` VALUES ('47', '13', '商城配置', '', '', '#', '', '_self', '10', '1', '2019-01-25 16:47:49');
INSERT INTO `mj_system_menu` VALUES ('48', '13', '数据管理', '', '', '#', '', '_self', '20', '1', '2019-01-25 16:48:35');
INSERT INTO `mj_system_menu` VALUES ('49', '4', '系统日志管理', '', 'layui-icon layui-icon-form', 'admin/oplog/index', '', '_self', '2', '1', '2019-02-18 12:56:56');
INSERT INTO `mj_system_menu` VALUES ('50', '47', '快递公司管理', '', 'layui-icon layui-icon-form', 'store/express_company/index', '', '_self', '3', '1', '2019-04-01 17:10:59');
INSERT INTO `mj_system_menu` VALUES ('52', '47', '邮费模板管理', '', 'layui-icon layui-icon-fonts-clear', 'store/express_template/index', '', '_self', '1', '1', '2019-04-23 13:17:10');

-- ----------------------------
-- Table structure for mj_system_queue
-- ----------------------------
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统-任务';

-- ----------------------------
-- Records of mj_system_queue
-- ----------------------------

-- ----------------------------
-- Table structure for mj_system_user
-- ----------------------------
DROP TABLE IF EXISTS `mj_system_user`;
CREATE TABLE `mj_system_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '用户账号',
  `password` varchar(32) DEFAULT '' COMMENT '用户密码',
  `qq` varchar(16) DEFAULT '' COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT '' COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT '' COMMENT '联系手机',
  `login_at` datetime DEFAULT NULL COMMENT '登录时间',
  `login_ip` varchar(255) DEFAULT '' COMMENT '登录IP',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `authorize` varchar(255) DEFAULT '' COMMENT '权限授权',
  `tags` varchar(255) DEFAULT '' COMMENT '用户标签',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0禁用,1启用)',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除(1删除,0未删)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_system_user_username` (`username`) USING BTREE,
  KEY `idx_system_user_status` (`status`) USING BTREE,
  KEY `idx_system_user_deleted` (`is_deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8mb4 COMMENT='系统-用户';

-- ----------------------------
-- Records of mj_system_user
-- ----------------------------
INSERT INTO `mj_system_user` VALUES ('10000', 'admin', '21232f297a57a5a743894a0e4a801fc3', '22222222', '', '', '2020-02-26 19:15:15', '127.0.0.1', '670', '', '', '', '1', '0', '2015-11-13 15:14:22');
INSERT INTO `mj_system_user` VALUES ('10001', 'yongr', '9cbf8a4dcb8e30682b927f352d6559a0', '', '', '17600221922', '2020-02-26 19:14:55', '127.0.0.1', '2', '1', '', '系统管理员', '1', '0', '2020-02-26 19:11:55');
