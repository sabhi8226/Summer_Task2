FROM centos

RUN yum update -y
COPY zoom_app /* /
RUN yum localinstall zoom_x86_64.rpm -y

CMD ["/usr/bin/zoom"]
