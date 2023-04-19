FROM debian
 
ENV container=docker  

COPY container.target /etc/systemd/system/container.target
 
RUN ln -sf /etc/systemd/system/container.target /etc/systemd/system/default.target && apt update -y && apt install docker.io ansible -y
 
ENTRYPOINT ["/sbin/init"]
 
CMD ["--log-level=info"]
