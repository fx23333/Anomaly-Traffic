# 基于在线学习的异常流量实时分析系统



## 安装环境需求

![image](https://user-images.githubusercontent.com/51851660/236371538-e27b3f0d-f19a-43b1-84b9-abb3f122c6e0.png)
![image](https://user-images.githubusercontent.com/51851660/236371582-975a3b07-cc1e-479d-b486-b1f392d8bfb4.png)


-  系统：Ubuntu18.04

- 基础环境及插件：python 3.6、Mysql8.0.26、Redis-x64-5.0.10、JDK1.8.0、Node.js16.14.2、maven3.6、Hadoop2.10.1、spark2.4.0、scala2.11.12、 Spring Boot 2.1.0、Spring Security、 JWT、Spring Boot Jpa、Vue、pytorch1.8



## 数据集



- **DARPA** 数据集[链接](http://www.11.mit.edu/ideval/data/2000/LLS_DDoS_1.0.html,2000.)

- **CAIDA**数据集[链接](https://www.unb.ca/cic/datasets/ids-2019.html,2017.)



## 基础环境安装



- [JDK：1.8+](https://www.runoob.com/java/java-environment-setup.html) 

- [Redis 3.0+](https://www.runoob.com/redis/redis-install.html)

- [Maven 3.0+](https://www.runoob.com/maven/maven-setup.html)

- [MYSQL 5.5.0+](https://www.runoob.com/mysql/mysql-install.html)

- [Node v10+ ](https://www.runoob.com/nodejs/nodejs-install-setup.html)(最好使用 12，高版本可能会有问题)



可通过如下方式验证是否安装成功：

```
npm config get registry
//在 ~/.npmrc 加入下面内容，可以避免安装 node-sass 失败
//sass_binary_site=https://npm.taobao.org/mirrors/node-sass/

//.npmrc 文件位于
//win：C:\Users\[你的账户名称]\.npmrc
//linux：直接使用 vi ~/.npmrc
```

## 项目部署


- 修改配置。按需修改我们的application-prod.yml，如需打Swagger，那么需要将enabled设置为true。

- 打包项目。我们需要将项目打包好的Jar文件上传到服务器

  ![image](https://user-images.githubusercontent.com/51851660/236371627-88c5c71e-334c-43d8-95df-db287f36c6ec.png)
  ![image](https://user-images.githubusercontent.com/51851660/236371638-c50e7ac2-bcd9-4c8b-9956-de40b7e51db8.png)


- 编写脚本。编写脚本用于操作java服务.
  
  - 启动脚本
    
    ```
    nohup java -jar eladmin-system-2.6.jar --spring.profiles.active=prod > nohup.out 2>&1 &
    ```
  
  - 停止脚本
    
    ```
    PID=$(ps -ef | grep eladmin-system-2.6.jar | grep -v grep | awk '{ print $2 }')
    if [ -z "$PID" ]
    then
    echo Application is already stopped
    else
    echo kill -9 $PID
    kill -9 $PID
    fi
    
    
    ```
  
  - 查看日志脚本log.sh
    
    ```
    tail -f nohup.out
    脚本创建完成后就可以操作 java 服务了
    # 启动java
    ./start.sh
    # 停止java服务
    ./stop.sh
    # 查看日志
    ./log.sh
    
    ```

## 主要操作方法



在浏览器打开[http://172.16.103.79:8013/](http://172.16.103.79:8013/)，简要设置之后即可查看流量分析结果以及DDoS攻击检测。


