FROM registry.fedoraproject.org/fedora:latest
    
EXPOSE 9090

RUN curl -L https://github.com/prometheus/prometheus/releases/download/v2.46.0/prometheus-2.46.0.linux-amd64.tar.gz -o /opt/prometheus-2.46.0.linux-amd64.tar.gz
RUN tar -vxzf /opt/prometheus-2.46.0.linux-amd64.tar.gz -C /opt
RUN ln -s /mnt /opt/prometheus-2.46.0.linux-amd64/data

CMD ["/bin/bash"]
