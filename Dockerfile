# ベースイメージの設定
FROM centos:7

# 作成者情報
MAINTAINER 0.2 csignwkr@gmail.com

# Apache httpd のインストール
RUN ["yum" , "-y" , "install" , "httpd" ]

# 80番ポートを Listen
EXPOSE 80

# Apache httpd の実行
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND"]
