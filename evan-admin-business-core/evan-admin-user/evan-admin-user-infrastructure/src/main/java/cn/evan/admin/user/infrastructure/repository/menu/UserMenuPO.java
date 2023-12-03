package cn.evan.admin.user.infrastructure.repository.menu;

import lombok.Data;

/**
 * @author EvanZuo[739221432@qq.com] 2023/10/02
 */
@Data
public class UserMenuPO {
    private Long catId;
    private String name;
    private Long parentCid;
    private Long catLevel;
    private Long showStatus;
    private int sort;
    private String component;
    private String path;
    private String redirect;
    private Boolean hideChildrenInMenu;
    private String icon;
    private String title;
    private Boolean hideMenu;
    private Boolean hideBreadcrumb;
    private String currentActiveMenu;
}

