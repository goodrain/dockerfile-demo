# PHP 示例程序

## 代码介绍

本项目是一个简单的 Nginx Dockerfile 文件，目录结构：

```
.
├── Dockerfile    # Docker镜像描述文件
├── index.html    # 替换默认的主页文件
└── README.md     # 说明文档

```
## Dockerfile文件

```dockerfile
FROM nginx:1.15.0-alpine
COPY index.html /usr/share/nginx/html/

VOLUME /data
EXPOSE 80
```

> 说明：
> - 使用 `nginx:1.15.0-alpine` 作为应用的基础镜像
> - 使用修改后的 `index.html` 替换默认的首页文件
> - 通过 `VOLUME` 关键词定义持久化目录，Rainbond会自动根据该选项挂载持久化目录
> - 通过 `EXPOSE` 关键词定义端口，创建应用时需要对外开启。

## 代码要求

当代码根目录中包含`Dockerfile` 文件时，Rainbond会通过 `Docker build`命令进行构建。值得注意的是，Dockerfile的优先级高于所有的源码构建。也就是说，当源码根目录中包含Dockerfile和其他语言的标示文件时，Rainbond构建模块优先以Dockerfile进行构建。

## 本地测试

```bash
# 构建镜像
docker build -t nginx:demo .

# 运行镜像
docker run -it -p 80:80 nginx:demo 

# 访问服务
http://localhost

```