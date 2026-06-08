FROM debian:latest

RUN apt-get update && apt-get install -y \
    git \
    curl \
    vim \
    wget \
    nano \
    net-tools \
    iputils-ping \
    iproute2 \
    htop \
    jq \
    dnsutils \
    procps \
    && rm -rf /var/lib/apt/lists/*

RUN cd ~ 
RUN wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz

RUN mkdir openshift
RUN tar -zxvf openshift-client-linux.tar.gz -C openshift
RUN echo 'export PATH=$PATH:~/openshift' >> ~/.bashrc 
#RUN source ~/.bashrc
RUN rm openshift-client-linux.tar.gz

RUN echo 'export API_SERVER=https://api.corsodgs00035.northeurope.aroapp.io:6443/' >> ~/.bashrc 
RUN echo 'export KUBE_VAR=' >> ~/.bashrc

#RUN source ~/.bashrc

