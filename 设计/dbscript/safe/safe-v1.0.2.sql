/********************** weiyong start 20181025 *******************************/
drop table if exists risk;

/*==============================================================*/
/* Table: risk                                                  */
/*==============================================================*/
create table risk
(
   id                   int not null auto_increment comment '风险id',
   enterprise_id        int not null default -1 comment '企业id',
   risk_code            varchar(50) not null default '' comment '风险编码',
   risk_work_place      varchar(50) not null default '' comment '风险作业场所',
   risk_category        varchar(50) not null default '' comment '风险类别',
   risk_reason          varchar(50) not null default '' comment '风险因素',
   risk_level           varchar(50) not null default '' comment '风险级别',
   control_reason       varchar(50) not null default '' comment '管控因素',
   control_method       varchar(50) not null default '' comment '管控措施',
   risk_status          int(1) not null default 1 comment '状态 1-正常, 2-报废',
   is_danger            int(1) not null default 1 comment '是否隐患排查 0-否, 1-是',
   frequency            varchar(50) not null default '' comment '检查频次',
   is_delete            int(1) not null default 0 comment '删除标识 0-未删除, 1-已删除',
   remark               varchar(500) not null default '' comment '备注',
   sort                 int not null default 1 comment '排序号',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table risk comment '风险表';

drop table if exists risk_accept;

/*==============================================================*/
/* Table: risk_accept                                           */
/*==============================================================*/
create table risk_accept
(
   id                   int not null auto_increment comment '风险验收id',
   risk_id              int not null default -1 comment '风险id',
   risk_code            varchar(50) not null default '' comment '风险编码',
   effect               varchar(50) not null default '-1' comment '验收结果',
   accept_user_id       int not null default -1 comment '验收用户id',
   accept_user_account  varchar(200) not null default '-1' comment '验收人账号',
   accept_user_name     varchar(200) not null default '-1' comment '验收人名字',
   accept_time          datetime not null comment '验收时间',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table risk_accept comment '风险验收表';

drop table if exists risk_duty;

/*==============================================================*/
/* Table: risk_duty                                             */
/*==============================================================*/
create table risk_duty
(
   id                   int not null auto_increment comment '风险责任id',
   risk_id              int not null default -1 comment '风险id',
   duty_user_id         int not null default -1 comment '责任用户id',
   duty_user_account    varchar(200) not null default '-1' comment '责任用户账号',
   duty_user_name       varchar(200) not null default '-1' comment '责任用户名字',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table risk_duty comment '风险责任表';

drop table if exists risk_check;

/*==============================================================*/
/* Table: risk_check                                            */
/*==============================================================*/
create table risk_check
(
   id                   bigint not null auto_increment comment '风险排查id',
   risk_id              int not null default -1 comment '风险d',
   effect               varchar(200) not null default '-1' comment '排查结果',
   check_user_id        int not null default -1 comment '排查用户id',
   check_user_account   varchar(200) not null default '-1' comment '排查用户账号',
   check_user_name      varchar(200) not null default '-1' comment '排查用户名字',
   check_time           datetime comment '排查时间',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table risk_check comment '风险排查表';

drop table if exists danger;

/*==============================================================*/
/* Table: danger                                                */
/*==============================================================*/
create table danger
(
   id                   int not null auto_increment comment '风险id',
   enterprise_id        int not null default -1 comment '企业id',
   org_id               int not null default -1 comment '机构id',
   org_name             varchar(300) not null default '' comment '机构名称',
   danger_site          varchar(50) not null default '' comment '隐患地点',
   danger_level         int(1) not null default '' comment '隐患级别 1-一般隐患, 1-重大隐患',
   danger_category      varchar(50) not null default '' comment '隐患大类',
   danger_sub_category  varchar(50) not null default '' comment '隐患小类',
   danger_time          datetime not null comment '隐患时间',
   danger_desc          varchar(500) not null default '' comment '隐患描述',
   danger_user_id       int not null default -1 comment '隐患发现人用户id',
   dange_user_account   varchar(50) not null default '-1' comment '隐患发现人用户账号',
   dange_user_name      varchar(50) not null default '-1' comment '隐患发现人用户名字',
   is_delete            int(1) not null default 0 comment '删除标识 0-未删除, 1-已删除',
   remark               varchar(500) not null default '' comment '备注',
   sort                 int not null default 1 comment '排序号',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table danger comment '隐患表';

drop table if exists danger_attachment;

/*==============================================================*/
/* Table: danger_attachment                                     */
/*==============================================================*/
create table danger_attachment
(
   id                   int not null auto_increment comment '隐患附件id',
   danger_id            int not null default -1 comment '隐患id',
   name                 varchar(50) not null default '' comment '附件名称',
   url                  varchar(100) not null default '' comment '附件url',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table danger_attachment comment '隐患附件表';

drop table if exists danger_check;

/*==============================================================*/
/* Table: danger_check                                          */
/*==============================================================*/
create table danger_check
(
   id                   int not null auto_increment comment '隐患抽查id',
   enterprise_id        int not null default -1 comment '企业id',
   org_id               int not null default -1 comment '机构id',
   org_name             varchar(300) not null default '' comment '机构名称',
   danger_id            int not null default -1 comment '隐患id',
   title                varchar(50) not null default '' comment '抽查标题',
   check_time           datetime not null comment '抽查时间',
   check_user_id        int not null default -1 comment '抽查用户id',
   check_user_account   varchar(50) not null default '-1' comment '抽查用户账号',
   check_user_name      varchar(50) not null default '-1' comment '抽查用户名字',
   is_delete            int(1) not null default 0 comment '删除标识 0-未删除, 1-已删除',
   remark               varchar(500) not null default '' comment '备注',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table danger_check comment '隐患抽查表';










/********************** weiyong end 20181025 *******************************/

