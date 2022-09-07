FROM amazonlinux

WORKDIR /home/ec2-user/node_exporter

COPY ./node_exporter-1.4.0-rc.0.linux-amd64 .

RUN ./node_exporter

CMD [ "/bin/bash" ]