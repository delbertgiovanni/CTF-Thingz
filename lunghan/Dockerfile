FROM php:7.4-apache

RUN apt-get update && apt-get -y install cron

#copy challenge file
COPY src /var/www/html
RUN mkdir /sekrit
COPY flag /sekrit

#reset log file to prevent the soft link
RUN rm /var/log/apache2/*.log
RUN service apache2 restart

#make permission to view access log
RUN chmod -R 777 /var/log/apache2

#set cronjob
ADD cron-start.sh /cron-start.sh
RUN chmod +x /cron-start.sh
RUN ["bash","/cron-start.sh"]

#expose port
EXPOSE 80
