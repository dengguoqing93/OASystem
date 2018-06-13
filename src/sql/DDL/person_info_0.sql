CREATE TABLE 'person_info' (
  'record_id' bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录编号',
  'name' varchar(255) NOT NULL COMMENT '姓名',
  'id_number' bigint(18) NOT NULL COMMENT '身份证号',
  'phone_number' bigint(11) NOT NULL COMMENT '手机号',
  'gender' varchar(2) CHARACTER SET latin1 NOT NULL COMMENT '性别',
  'dob' date NOT NULL COMMENT '出生日期',
  'email' varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '邮箱',
  'native_place' varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '籍贯',
  'address' varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '居住地址',
  'create_date' datetime NOT NULL COMMENT '创建时间',
  'update_date' datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY ('record_id'),
  UNIQUE KEY 'id_card_index' ('id_number') USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='该表是存贮人员基本信息的表';

CREATE TRIGGER 'insert_create' BEFORE INSERT ON 'person_info' FOR EACH ROW set NEW.update_date = NOW(), NEW.create_date = NOW();

CREATE TRIGGER 'update_update_date' BEFORE UPDATE ON 'person_info' FOR EACH ROW set NEW.update_date = NOW();