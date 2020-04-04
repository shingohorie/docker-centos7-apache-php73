FROM centos:centos7

RUN yum -y update && \
    yum -y install httpd && \
    systemctl enable httpd && \
    yum -y install epel-release && \
    yum -y install http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
    yum -y install --enablerepo=epel,remi,remi-php73 php php-devel php-mbstring php-pdo php-gd php-xml php-mcrypt php-curl php-mysql

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]