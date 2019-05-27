/********************** 短信数据库 *******************************/
/********************** weiyong start 20170905 *******************************/
drop table if exists sms;

/*==============================================================*/
/* Table: sms                                                   */
/*==============================================================*/
create table sms
(
   id                   int not null auto_increment comment '用户短信发送id',
   mobile               varchar(20) not null default '' comment '手机号码',
   content              varchar(200) not null default '' comment '短信内容',
   status               int(1) not null default 0 comment '状态 0-成功; 1-失败',
   sms_type             int(1) not null default 1 comment '短信发送类型 1-单发, 2-群发, 3-定时发送',
   send_time            datetime not null comment '发送时间',
   source               varchar(20) default '' comment '短信来源 如IMI, ent(法人)等',
   create_time          datetime not null comment '创建时间',
   update_time          datetime not null comment '更新时间',
   primary key (id)
);

alter table sms comment '短信发送表';
/********************** weiyong end 20170905 *******************************/

