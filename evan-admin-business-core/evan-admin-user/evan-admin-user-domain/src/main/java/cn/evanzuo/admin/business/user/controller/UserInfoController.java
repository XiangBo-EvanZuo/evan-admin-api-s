package cn.evanzuo.admin.business.user.controller;


import cn.evanzuo.admin.business.user.DTO.PerCodeDTO;
import cn.evanzuo.admin.business.user.entity.RoleItem;
import cn.evanzuo.admin.business.user.entity.User;
import cn.evanzuo.admin.business.user.sdk.feign.dto.MenuVo;
import cn.hutool.core.convert.Convert;
import cn.hutool.json.JSONObject;
import com.alibaba.fastjson.JSON;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.List;

/**
 * 获取登录用户信息接口
 *
 * @author EvanZuo[739221432@qq.com] 2023/09/24
 */
@RestController
@RequestMapping("/user")
public class UserInfoController {
  private final static Logger LOGGER = LoggerFactory.getLogger(UserInfoController.class);

  @Autowired
  MenusService menusService;

  @GetMapping("/currentUser")
  public User currentUser(HttpServletRequest request) throws UnsupportedEncodingException {
    // 从Header中获取用户信息
    String userStr = request.getHeader("user");
    System.out.println("----");
    System.out.println(userStr);
    JSONObject userJsonObject = new JSONObject(userStr);
    String roles = (String) userJsonObject.get("roles");
    List<RoleItem> roleObj = (List<RoleItem>) JSON.parse(URLDecoder.decode(roles, "UTF-8"));
    return User.builder()
            .username(userJsonObject.getStr("user_name"))
            .nickName(userJsonObject.getStr("nickName"))
            .id(Convert.toLong(userJsonObject.get("id")))
            .roles(roleObj)
            .build();
  }

  // todo: RBAC0模型完善
  @GetMapping("/getPermCode")
  public PerCodeDTO getPermCode(HttpServletRequest request) throws UnsupportedEncodingException {
    return PerCodeDTO.builder()
            .perCodeList(Collections.singletonList("1000, 4000, 5000"))
            .build();
  }

  @GetMapping("/getMenuList")
  public MenuVo getMenuList(HttpServletRequest request) {
      return menusService.project(request);
  }

  @GetMapping
  public JSONObject findUser(HttpServletRequest request) {
    // 从Header中获取用户信息
    String userStr = request.getHeader("user");
    return new JSONObject(userStr);
  }
}
