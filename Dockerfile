FROM      centos
RUN       yum install openssh-server passwd shadow-utils -y &&\
          echo docker | passwd --stdin root &&\
          ssh-keygen -A
CMD       /usr/sbin/sshd -D
