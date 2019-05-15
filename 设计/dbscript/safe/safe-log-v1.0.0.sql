/********************** weiyong start 20181025 *******************************/
drop table if exists base_user_info;

/*==============================================================*/
/* Table: base_user_info                                        */
/*==============================================================*/
create table base_user_info
(
   id                   int not null auto_increment comment '基础用户id',
   user_account         varchar(100) not null default '' comment '用户账号',
   user_name            varchar(100) not null default '' comment '用户名称',
   user_type            int(1) not null default 1 comment '用户类型',
   user_status          int(1) not null default 1 comment '用户状态: 1-正常, 2-冻结, 3-注销',
   user_email           varchar(30) not null default '' comment '用户邮箱',
   is_delete            int(1) not null default 0 comment '删除标识 0-未删除, 1-已删除',
   remark               varchar(200) not null default '' comment '备注',
   sort                 int not null default 1 comment '排序号',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id),
   unique key uk_user_account (user_account)
);

alter table base_user_info comment '基础用户信息表';

drop table if exists user_app_login_log;

/*==============================================================*/
/* Table: user_app_login_log                                    */
/*==============================================================*/
create table user_app_login_log
(
   id                   bigint not null auto_increment comment '用户应用登录日志id',
   user_id              int not null default -1 comment '用户id',
   user_account         varchar(50) not null default '' comment '用户账号',
   user_name            varchar(50) not null default '' comment '用户名称',
   login_type           int(1) not null default 1 comment '登录类型 1-登录, 2-退出',
   login_time           datetime not null comment '注册或登录时间',
   log_type             int(1) not null default 1 comment '日志类型 1-app, 2支付宝, 3-微信公众号, 4-微信小程序',
   login_mode           varchar(20) not null default '' comment '登录方式',
   login_ip             varchar(20) not null default '' comment '登录ip',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table user_app_login_log comment '用户应用登录日志表';

drop table if exists user_admin_login_log;

/*==============================================================*/
/* Table: user_admin_login_log                                  */
/*==============================================================*/
create table user_admin_login_log
(
   id                   bigint not null auto_increment comment '用户登录日志id',
   user_id              int not null default -1 comment '用户id',
   user_account         varchar(50) not null default '' comment '用户账号',
   user_name            varchar(50) not null default '' comment '用户名称',
   login_type           int(1) not null default 1 comment '登录类型 1-登录, 2-退出',
   login_time           datetime not null comment '登录时间',
   log_type             int(1) not null default 1 comment '日志类型 1-pc',
   login_mode           varchar(20) not null default '' comment '登录方式',
   login_ip             varchar(20) not null default '' comment '登录ip',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table user_admin_login_log comment '用户管理日志表';

drop table if exists attachment_log;

/*==============================================================*/
/* Table: attachment_log                                        */
/*==============================================================*/
create table attachment_log
(
   id                   bigint not null auto_increment comment '附件日志id',
   attachment_name      varchar(50) not null default '' comment '附件名称',
   attachment_url       varchar(100) not null default '' comment '附件URL',
   attachment_type      int(1) not null default 1 comment '附件类型 1-图片, 2-文件',
   content              varchar(300) not null default '' comment '附件内容',
   update_time          datetime comment '更新时间',
   create_time          datetime comment '创建时间',
   primary key (id)
);

alter table attachment_log comment '附件日志表';

/********************** weiyong end 20181025 *******************************/

