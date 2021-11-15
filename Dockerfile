FROM ubi7/ubi:7.7
MAINTAINER Manuel Bernardino manuel.bernardino@gmail.com
LABEL description="A basic Apache Contener on RHEL 7 UBI"
RUN yum install -y httpd && \
        yum clean all
RUN echo "Hello from DockerFile" > /usr/share/httpd/noindex/index.html
EXPOSE 80
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
