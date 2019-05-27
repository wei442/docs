/********************** 邮件数据库 *******************************/
/********************** weiyong start 20171109 *******************************/
drop table if exists mail_log;

/*==============================================================*/
/* Table: mail_log                                              */
/*==============================================================*/
create table mail_log
(
   id                   int not null auto_increment comment '邮件日志id',
   user_name            varchar(50) not null default '' comment '用户名',
   password             varchar(50) not null default '' comment '密码',
   host                 varchar(30) not null default '' comment '主机',
   mail_from            varchar(50) not null default '' comment '邮件发件人',
   mail_to              varchar(500) not null default '' comment '邮件收件人',
   mail_cc              varchar(500) comment '邮件抄送人',
   mail_bcc             varchar(500) comment '邮件密送人',
   subject              varchar(300) not null default '' comment '邮件主题',
   content              varchar(1000) not null default '' comment '邮件内容',
   status               int(1) not null default 0 comment '状态 0-成功; 1-失败',
   mail_type            int(1) not null default 1 comment '邮件发送类型 1-普通邮件, 2-附件',
   send_time            datetime not null comment '发送时间',
   source               varchar(20) not null default '' comment '邮件来源',
   create_time          datetime not null comment '创建时间',
   update_time          datetime not null comment '更新时间',
   primary key (id)
);

alter table mail_log comment '邮件日志表';

drop table if exists mail_attachment_log;

/*==============================================================*/
/* Table: mail_attachment_log                                   */
/*==============================================================*/
create table mail_attachment_log
(
   id                   int not null auto_increment comment '邮件附件日志id',
   mail_log_id          int not null auto_increment comment '邮件日志id',
   file_name            varchar(100) not null default '' comment '附件名称',
   file_path            varchar(100) not null default '' comment '附件目录',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '修改时间',
   primary key (id)
);

alter table mail_attachment_log comment '邮件附件日志表';
/********************** weiyong end 20171109 *******************************/

