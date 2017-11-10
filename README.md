# tms

> JHZ旅行社管理系统

本系统旨在帮助旅行社将业务流程、成本控制、客户关系、销售管理、计调管理、财务结算等各个方面完美地集成于一体，
建立完整的企业信息数据链，使得旅行社管理层可以对企业运作的各个主要环节进行管理、跟踪、分析、低成本、高效率的完成日常经营活动，
同时满足不同客户的需求； 数据智能分析为公司的长期发展提供决策支持，从而让企业可以最大程度的提高工作效率及发展契机。

## 技术选型

- UI：Bootstrap
- 核心框架：Spring Framework
- 视图框架：Spring MVC
- 持久层框架：MyBatis
- 数据库连接池：Alibaba Druid
- 日志管理：SLF4J、Log4j
- 缓存框架：Redis（待定）
- 布局框架：SiteMesh（待定）

## 开发环境

- Java
- Maven
- Git
- IDEA

### 0.1版本
- 环境配置，框架搭建完成
- 实现客户管理模块(访问路径：http://localhost:8080/customer/list)

### 0.5版本
- 实现系统管理（用户管理），资源管理（线路管理），线路管理模块
- 用户登录功能完成（无错误提示，注册尚未实现）
