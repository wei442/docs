/********************** weiyong start 20181025 *******************************/
drop table if exists org_quality;

/*==============================================================*/
/* Table: org_quality                                           */
/*==============================================================*/
create table org_quality
(
   id                   int not null auto_increment comment '企业资质id',
   enterprise_id        int not null default -1 comment '企业id',
   org_id               int not null default -1 comment '机构id',
   org_name             varchar(100) not null default '' comment '机构名称',
   quality_name         varchar(50) not null default '' comment '资质名称',
   is_delete            int(1) not null default 0 comment '删除标识 0-未删除, 1-已删除',
   remark               varchar(200) not null default '' comment '备注',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table org_quality comment '组织机构资质表';

drop table if exists org_quality_attachment;

/*==============================================================*/
/* Table: org_quality_attachment                                */
/*==============================================================*/
create table org_quality_attachment
(
   id                   int not null auto_increment comment '组织机构资质附件id',
   org_quality_id       int not null default -1 comment '组织机构资质id',
   attachment_url       varchar(100) not null default '' comment '附件URL',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table org_quality_attachment comment '组织机构资质附件表';

drop table if exists user_quality;

/*==============================================================*/
/* Table: user_quality                                          */
/*==============================================================*/
create table user_quality
(
   id                   int not null auto_increment comment '用户资质附件id',
   enterprise_id        int not null default -1 comment '企业id',
   user_id              int not null default -1 comment '用户id',
   user_name            varchar(50) not null default '' comment '用户名称',
   quality_name         varchar(50) not null default '' comment '资质名称',
   is_delete            int(1) not null default 0 comment '删除标识 0-未删除, 1-已删除',
   remark               varchar(200) not null default '' comment '备注',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table user_quality comment '用户资质表';

drop table if exists user_quality_attachment;

/*==============================================================*/
/* Table: user_quality_attachment                               */
/*==============================================================*/
create table user_quality_attachment
(
   id                   int not null auto_increment comment '用户资质附件id',
   user_quality_id      int not null default -1 comment '用户资质id',
   attachment_url       varchar(100) not null default '' comment '附件URL',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table user_quality_attachment comment '用户资质附件表';

drop table if exists activity;

/*==============================================================*/
/* Table: activity                                              */
/*==============================================================*/
create table activity
(
   id                   int not null auto_increment comment '安全活动id',
   enterprise_id        int not null default -1 comment '企业id',
   org_id               int not null default -1 comment '机构id',
   org_name             varchar(100) not null default '' comment '机构名称',
   activity_name        varchar(100) not null default '' comment '活动名称',
   activity_start_time  datetime comment '活动开始时间',
   activity_end_time    datetime comment '活动结束时间',
   activity_site        varchar(50) not null default '' comment '活动地点',
   content              varchar(500) not null default '' comment '活动内容',
   experience           varchar(500) not null default '' comment '活动经验',
   lesson               varchar(500) not null default '' comment '活动教训',
   key_word             varchar(50) not null default '' comment '关键字',
   is_delete            int(1) not null default 0 comment '删除标识 0-未删除, 1-已删除',
   remark               varchar(200) not null default '' comment '备注',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table activity comment '安全活动表';

drop table if exists activity_comment;

/*==============================================================*/
/* Table: activity_comment                                      */
/*==============================================================*/
create table activity_comment
(
   id                   int not null auto_increment comment '活动附件id',
   activity_id          int not null default -1 comment '活动id',
   comments             varchar(200) not null default '' comment '留言评论',
   score                int(2) not null default 0 comment '打分',
   views                int not null default 0 comment '点击量',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table activity_comment comment '活动评论表';

drop table if exists activity_attachment;

/*==============================================================*/
/* Table: activity_attachment                                   */
/*==============================================================*/
create table activity_attachment
(
   id                   int not null auto_increment comment '活动附件id',
   activity_id          int not null default -1 comment '活动id',
   attachment_url       varchar(100) not null default '' comment '附件URL',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table activity_attachment comment '活动附件表';

drop table if exists rule;

/*==============================================================*/
/* Table: rule                                                  */
/*==============================================================*/
create table rule
(
   id                   int not null auto_increment comment '规范文件id',
   enterprise_id        int not null default -1 comment '企业id',
   org_id               int not null default -1 comment '机构id',
   org_name             varchar(100) not null default '' comment '机构名称',
   rule_name            varchar(100) not null default '' comment '规范名称',
   rule_no              varchar(50) not null default '' comment '规范编号',
   key_word             varchar(50) not null default '' comment '关键字',
   rule_category        int(1) not null default 1 comment '规范类别 1-法律, 2-法规, 3-部门规章, 4-地方性法规, 5-标准',
   rule_type            int(1) not null default 1 comment '规范类型 1-法律法规制度, 2-安全生产管理制度, 3-安全操作规程',
   is_delete            int(1) not null default 0 comment '删除标识 0-未删除, 1-已删除',
   remark               varchar(500) not null default '' comment '备注',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table rule comment '规范文件表';

drop table if exists rule_attachment;

/*==============================================================*/
/* Table: rule_attachment                                       */
/*==============================================================*/
create table rule_attachment
(
   id                   int not null auto_increment comment '规范附件id',
   rule_id              int not null default -1 comment '规范id',
   attachment_url       varchar(100) not null default '' comment '附件URL',
   created              varchar(50) not null default '' comment '创建人',
   updated              varchar(50) not null default '' comment '更新人',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   primary key (id)
);

alter table rule_attachment comment '规范文件附件表';

/********************** weiyong end 20181025 *******************************/

