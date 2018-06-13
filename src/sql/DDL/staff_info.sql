CREATE TABLE 'staff_info' (
  'record_id' bigint(20) NOT NULL COMMENT '记录编号',
  'staff_number' varchar(15) NOT NULL COMMENT '工号',
  'password' varchar(255) NOT NULL COMMENT '登录密码',
  'id_number' bigint(18) NOT NULL COMMENT '身份号',
  'staff_level' varchar(8) NOT NULL COMMENT '职级信息',
  'department_number' varchar(8) NOT NULL COMMENT '部门编号',
  'create_date' datetime NOT NULL COMMENT '创建时间',
  'update_date' datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY ('record_id'),
  UNIQUE KEY 'staff_number_index' ('staff_number') USING HASH COMMENT '员工编号索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工信息表';

CREATE TRIGGER 'insert_date' BEFORE INSERT ON 'staff_info' FOR EACH ROW set NEW.create_date = NOW(),NEW.update_date = NOW();

CREATE TRIGGER 'update_date' BEFORE UPDATE ON 'staff_info' FOR EACH ROW set NEW.update_date = NOW();