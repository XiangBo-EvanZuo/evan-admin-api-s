insert into tb_wang_auth_url (id, status, module_id, path, deleted)
values  (3, 1, 2, '/menu/list', 0),
        (5, 1, 1, '/feign', 0),
        (6, 1, 4, '/business-demo', 0),
        (7, 1, 1, '/user/currentUser', 0),
        (8, 1, 4, '/feign', 0),
        (9, 1, 2, '/menu/list', 0),
        (10, 1, 3, '/oauth/logout', 0),
        (11, 1, 1, '/user/getPermCode', 0),
        (12, 1, 1, '/user/feignGetMenuList', 0),
        (13, 1, 2, '/menu/listPage', 0),
        (14, 1, 2, '/system/getDeptList', 0),
        (15, 1, 2, '/system/getAccountList', 0),
        (16, 1, 2, '/system/getAllRoleList', 0),
        (17, 1, 2, '/system/accountExist', 0),
        (18, 1, 2, '/system/getRoleListByPage', 0),
        (19, 1, 4, '/userList', 0),
        (20, 1, 2, '/system/getUrlList', 0),
        (21, 1, 2, '/system/getModuleList', 0),
        (22, 1, 2, '/system/addAuthUrl', 0),
        (23, 1, 2, '/system/updateAuthUrl', 0),
        (104, 1, 2, '/sysy/dcao', 0),
        (106, 1, 2, '/system/deleteAuthUrl', 0),
        (107, 1, 2, '/system/updateRoleUrl', 0),
        (108, 1, 2, '/system/updateRoleMenu', 0),
        (109, 1, 2, '/demo2', 0);

insert into tb_wang_business_modules (id, path, name)
values  (1, '/order', '订单'),
        (2, '/user', '用户'),
        (3, '/auth', '鉴权'),
        (4, '/pay', '支付');
insert into tb_wang_role (id, value, role_name, remarks, role_status)
values  (1, 'ADMIN', '管理员', '1', 1),
        (2, 'USER', '普通用户', '2', 1),
        (3, 'SUPER ADMIN', '超级管理员', '3', 1);
insert into tb_wang_url_role_relation (id, role_id, url_id)
values  (134, '3', '1'),
        (135, '3', '2'),
        (136, '3', '20'),
        (137, '2', '10'),
        (138, '2', '107'),
        (139, '2', '106'),
        (140, '2', '23'),
        (141, '2', '1'),
        (142, '2', '2'),
        (143, '2', '3'),
        (144, '2', '4'),
        (145, '2', '5'),
        (146, '2', '6'),
        (147, '2', '7'),
        (148, '2', '8'),
        (149, '2', '9'),
        (150, '2', '22'),
        (151, '2', '11'),
        (152, '2', '12'),
        (153, '2', '13'),
        (154, '2', '16'),
        (155, '2', '17'),
        (156, '2', '18'),
        (157, '2', '19'),
        (158, '2', '20'),
        (159, '2', '21'),
        (160, '1', '106'),
        (161, '1', '107'),
        (162, '1', '1'),
        (163, '1', '2'),
        (164, '1', '3'),
        (165, '1', '4'),
        (166, '1', '5'),
        (167, '1', '6'),
        (168, '1', '7'),
        (169, '1', '8'),
        (170, '1', '9'),
        (171, '1', '10'),
        (172, '1', '11'),
        (173, '1', '12'),
        (174, '1', '13'),
        (175, '1', '14'),
        (176, '1', '15'),
        (177, '1', '16'),
        (178, '1', '17'),
        (179, '1', '18'),
        (180, '1', '19'),
        (181, '1', '20'),
        (182, '1', '21'),
        (183, '1', '22'),
        (184, '1', '23'),
        (185, '1', '108');
insert into tb_wang_user (id, username, password, mobile, pwd, deleted, version, avatar_url, enabled, credentials_non_expired, account_non_expired, account_non_locked)
values  (1, 'admin', '$2a$10$DfEiVYQiJk3zL/tpqIN5heat8BqU6X1wNCZj1aqEsf9GRPYKoMyQC', '1', '$2a$10$DfEiVYQiJk3zL/tpqIN5heat8BqU6X1wNCZj1aqEsf9GRPYKoMyQC', 0, null, null, 1, 1, 1, 1),
        (2, 'user', '$2a$10$DfEiVYQiJk3zL/tpqIN5heat8BqU6X1wNCZj1aqEsf9GRPYKoMyQC', null, '$2a$10$DfEiVYQiJk3zL/tpqIN5heat8BqU6X1wNCZj1aqEsf9GRPYKoMyQC', 0, null, null, 1, 1, 1, 1);

insert into tb_wang_user_extra (user_id, create_time, email, nick_name, remark)
values  (1, '2023-10-08 15:30:45', '739221432@qq.com', 'admin-bo', '1'),
        (2, '2023-10-08 15:30:58', '1157778986@qq.com', 'user-wang', '2');

insert into tb_wang_user_role_relation (id, role_id, user_id)
values  ('1', 1, 1),
        ('2', 2, 2),
        ('3', 2, 1),
        ('4', 3, 1);

insert into tb_wang_menu_category (cat_id, name, parent_cid, cat_level, show_status, sort, component, path, redirect, hide_children_in_menu, icon, title, hide_menu, hide_breadcrumb, current_active_menu)
values  (1, 'Dashboard', 0, 1, 1, 0, 'LAYOUT', '/dashboard', '/dashboard/analysis', 1, 'bx:bx-home', 'routes.dashboard.dashboard', 0, 0, '/dashboard'),
        (2, 'Analysis', 1, 2, 1, 0, '/dashboard/analysis/index', 'analysis', '', 0, 'bx:bx-home', 'routes.dashboard.dashboard', 1, 1, null),
        (3, 'Workbench', 1, 2, 1, 0, '/dashboard/workbench/index', 'workbench', '', 0, 'bx:bx-home', 'routes.dashboard.dashboard', 1, 1, null),
        (4, 'Permission', 0, 1, 1, 0, 'LAYOUT', '/permission', '/permission/back/btn', 0, 'carbon:user-role', 'routes.demo.permission.permission', 0, 0, null),
        (1433, 'PermissionBackDemo', 4, 2, 1, 0, '', 'back', '', 0, null, 'routes.demo.permission.back', 0, 0, null),
        (1434, 'BackAuthBtn', 1433, 3, 1, 0, '/demo/permission/back/Btn', 'btn', null, 0, null, 'routes.demo.permission.backBtn', 0, 0, null),
        (1435, 'BackAuthPage', 1433, 3, 1, 0, '/demo/permission/back/index', 'page', null, 0, null, 'routes.demo.permission.backPage', 0, 0, null),
        (1436, 'System', 0, 1, 1, 0, 'LAYOUT', '/system', '/system/account', 0, 'ion:settings-outline', 'routes.demo.system.moduleName', 0, 0, null),
        (1437, 'AccountManagement', 1436, 2, 1, 0, '/demo/system/account/index', 'account', null, 0, 'ion:settings-outline', 'routes.demo.system.account', 0, 0, null),
        (1438, 'AccountDetail', 1436, 2, 1, 0, '/demo/system/account/AccountDetail', 'account_detail/:id', null, 0, 'ion:settings-outline', 'routes.demo.system.account_detail', 1, 0, '/system/account'),
        (1439, 'RoleManagement', 1436, 2, 1, 0, '/demo/system/role/index', 'role', null, 0, 'ion:settings-outline', 'routes.demo.system.role', 0, 0, null),
        (1440, 'MenuManagement', 1436, 2, 1, 0, '/demo/system/menu/index', 'menu', null, 0, 'ion:settings-outline', 'routes.demo.system.menu', 0, 0, null),
        (1441, 'DeptManagement', 1436, 2, 1, 0, '/demo/system/dept/index', 'dept', null, 0, 'ion:settings-outline', 'routes.demo.system.dept', 0, 0, null),
        (1442, 'ChangePassword', 1436, 2, 1, 0, '/demo/system/password/index', 'changePassword', null, 0, 'ion:settings-outline', 'routes.demo.system.password', 0, 0, null),
        (1443, 'URL资源管理', 1436, 2, 1, 0, '/demo/system/url/index', 'urlResource', null, 0, 'ion:settings-outline', 'routes.demo.system.url', 0, 0, null);

insert into tb_wang_role_category_relation (id, category_id, role_id)
values  (6, 1, 3),
        (7, 4, 3),
        (8, 1436, 3),
        (12, 1, 1),
        (13, 4, 1),
        (14, 1436, 1),
        (18, 1, 2),
        (19, 4, 2);

insert into tb_wang_user_dept (cat_id, dept_name, parent_cid, cat_level, sort, create_time, remark, status)
values  (1, 'Dashboard', 0, 1, 0, '2023-10-05 11:04:51', null, 0),
        (2, 'Analysis', 1, 2, 0, '2023-10-05 11:04:51', null, 0),
        (3, 'Workbench', 1, 2, 0, '2023-10-05 11:04:51', null, 0),
        (4, 'Permission', 0, 1, 0, '2023-10-05 11:04:51', null, 0),
        (1433, 'PermissionBackDemo', 4, 2, 0, '2023-10-05 11:04:51', null, 0),
        (1434, 'BackAuthBtn', 1433, 3, 0, '2023-10-05 11:04:51', null, 0),
        (1435, 'BackAuthPage', 1433, 3, 0, '2023-10-05 11:04:51', null, 0),
        (1436, 'System', 0, 1, 0, '2023-10-05 11:04:51', null, 0),
        (1437, 'AccountManagement', 1436, 2, 0, '2023-10-05 11:04:51', null, 0),
        (1438, 'AccountDetail', 1436, 2, 0, '2023-10-05 11:04:51', null, 0),
        (1439, 'RoleManagement', 1436, 2, 0, '2023-10-05 11:04:51', null, 0),
        (1440, 'MenuManagement', 1436, 2, 0, '2023-10-05 11:04:51', null, 0),
        (1441, 'DeptManagement', 1436, 2, 0, '2023-10-05 11:04:51', null, 0),
        (1442, 'ChangePassword', 1436, 2, 0, '2023-10-05 11:04:51', null, 0);

insert into tb_wang_user_dept_relation (id, user_id, dept_id)
values  (1, 1, 1),
        (2, 2, 1),
        (3, 1, 2),
        (4, 2, 2);
