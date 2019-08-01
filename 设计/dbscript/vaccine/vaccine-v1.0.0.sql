/********************** weiyong start 20190731 *******************************/
drop table if exists user_info;

/*==============================================================*/
/* Table: user_info                                             */
/*==============================================================*/
create table user_info
(
   id                   int not null auto_increment comment '用户id',
   user_account         varchar(30) not null default '' comment '用户账号',
   user_name            varchar(50) not null default '' comment '用户名称',
   nick_name            varchar(50) not null default '' comment '昵称',
   user_type            int(1) not null default 1 comment '用户类型, 1-手机, 2-账号',
   gender               int(1) not null default 0 comment '用户性别 0-未知, 1-男, 2-女',
   head_image_url       varchar(100) not null default '' comment '用户头像',
   status               int(1) not null default 1 comment '用户状态 1-正常, 2-冻结, 3-注销',
   is_delete            int(1) not null default 0 comment '删除标识 0-未删除, 1-已删除',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '修改时间',
   primary key (id)
);

alter table user_info comment '用户信息表';


/********************** weiyong end 20190731 *******************************/
