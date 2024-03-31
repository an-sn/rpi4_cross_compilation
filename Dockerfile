FROM ubuntu
VOLUME /toolchain
RUN apt update && apt upgrade -y
RUN apt install vim -y
RUN apt install cmake -y
CMD ["tail", "-f", "/dev/null"]