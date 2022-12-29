FROM ubuntu:20.04
MAINTAINER HADEKA arsyalra8@gmail.com
RUN apt-get update && apt-get install -y openssh-server openssh-client
EXPOSE 8080
CMD /usr/sbin/sshd -p 8080
