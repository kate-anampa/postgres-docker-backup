FROM ubuntu:22.04

RUN apt update && apt install -y cron

COPY cleanup.sh /cleanup.sh
RUN chmod +x /cleanup.sh

RUN echo "0 */4 * * * /cleanup.sh >> /var/log/cron.log 2>&1" > /etc/cron.d/cleanup-cron

RUN chmod 0644 /etc/cron.d/cleanup-cron

CMD ["cron","-f"]