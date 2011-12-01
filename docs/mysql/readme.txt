文件说明：
1 MySql数据库创建、导入及jdbc连接配置.txt 安装说明
2 public_mysql_backup.sql                 MySql备份文件
3 mysql-essential-5.1.55-win32.msi 				MySql安装文件
4 mysql-connector-java-5.1.6-bin.jar 			数据库驱动

1 创建数据库
DROP DATABASE public;

CREATE DATABASE public;

GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER ON public.* TO public@localhost IDENTIFIED BY '123456';

SET PASSWORD FOR 'public'@'localhost' = OLD_PASSWORD('123456');

USE public;

2 导入数据库
C:\Program Files\MySQL\MySQL Server 5.1\bin>mysql -u root -p123456 public<public_mysql_backup.sql

3  修改数据库连接配置文件：bhtsys\src\proxool.xml 7-18行
  
<!--driver-url>jdbc:postgresql://localhost:5432/bhtec</driver-url>
  <driver-class>org.postgresql.Driver</driver-class>
  <driver-properties>
    <property name="user" value="postgres"/>
    <property name="password" value="123456"/>
  </driver-properties-->
  <driver-url>jdbc:mysql://localhost:3306/public</driver-url>
  <driver-class>com.mysql.jdbc.Driver</driver-class>
  <driver-properties>
    <property name="user" value="root"/>
    <property name="password" value="123456"/>
  </driver-properties>

4  将mysql-connector-java-5.1.6-bin.jar分别拷贝到bhtsys\WEB-INF\lib\和Tomcat\server\lib\下

5 启动tomcat,mysql 数据库版本测试“不是很充分”