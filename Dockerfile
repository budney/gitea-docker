FROM kunde21/gitea-arm:latest
MAINTAINER Len Budney (len.budney@gmail.com)

COPY sshd_config /etc/ssh/

ENTRYPOINT ["/usr/bin/entrypoint", "/bin/s6-svscan", "/etc/s6"]
EXPOSE 22/tcp
EXPOSE 3000/tcp
