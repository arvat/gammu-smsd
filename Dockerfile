FROM ubuntu:latest
ENV maintainer="https://arvat.org"

RUN apt update && apt install -y gammu gammu-smsd wget
ADD gammu-smsdrc /etc/
ADD receive_sms.sh /root/
RUN chmod 755 /root/receive_sms.sh
RUN mkdir -p /var/log/gammu
RUN mkdir -p /var/log/gammu/inbox
RUN mkdir -p /var/log/gammu/outbox
RUN mkdir -p /var/log/gammu/sent
RUN mkdir -p /var/log/gammu/error
RUN usermod -aG dialout gammu
ENTRYPOINT ["gammu-smsd"]
