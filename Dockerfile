FROM nginx
MAINTAINER Evans

RUN apt update
RUN apt install wget unzip -y

ADD homer.conf /etc/nginx/conf.d/
ADD homer-dashboard.sh /opt/
WORKDIR /usr/share/nginx/homer
EXPOSE 8080
CMD ["bash","-c","sh /opt/homer-dashboard.sh"]


