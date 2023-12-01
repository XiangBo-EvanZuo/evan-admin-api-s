package cn.evanzuo.admin.business.user.intf;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * @author EvanZuo[739221432@qq.com] 2023/09/24
 */
@EnableFeignClients(basePackages = "cn.evanzuo.admin.common.feign.client.clients")
@EnableDiscoveryClient
@SpringBootApplication
@MapperScan("cn.evanzuo.admin.business.user.mapper")
public class BusinessUserApp {

  public static void main(String[] args) {
    SpringApplication.run(BusinessUserApp.class, args);
  }
}
