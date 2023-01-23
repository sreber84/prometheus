FROM registry.fedoraproject.org/fedora:latest
    
EXPOSE 9090

RUN curl -L https://github.com/prometheus/prometheus/releases/download/v2.41.0/prometheus-2.41.0.linux-amd64.tar.gz -o /opt/prometheus-2.41.0.linux-amd64.tar.gz
RUN tar -vxzf /opt/prometheus-2.41.0.linux-amd64.tar.gz -c /opt
RUN mkdir -p /opt/prometheus-2.41.0.linux-amd64/data
    
USER 1001

CMD ["/bin/bash"]
