FROM centos:7
EXPOSE 22

RUN yum -y update && \
    yum -y install openssh-server && \
    /usr/bin/ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -C '' -N '' && \
    mkdir /root/.ssh && \
    curl -L https://github.com/hoshinotsuyoshi.keys >> /root/.ssh/authorized_keys && \
    chmod 600 /root/.ssh/authorized_keys && \
    sed -ri 's/^#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config
CMD ["/usr/sbin/sshd", "-D"]
