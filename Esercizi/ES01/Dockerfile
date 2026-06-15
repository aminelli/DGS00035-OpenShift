FROM debian:latest

# Ottimizzazione layering
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
    && rm -rf /var/lib/apt/lists/* \
    && cd ~ \
    && wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz \
    && mkdir openshift \
    && tar -zxvf openshift-client-linux.tar.gz -C openshift \
    && echo 'export PATH=$PATH:~/openshift' >> ~/.bashrc \
    && rm openshift-client-linux.tar.gz \
    && echo 'export API_SERVER=https://api.corsodgs00035.northeurope.aroapp.io:6443/' >> ~/.bashrc \
    && echo 'export KUBE_VAR=' >> ~/.bashrc \
    && /bin/bash

RUN apt-get update && \
    apt-get install curl gpg apt-transport-https --yes && \
    curl -fsSL https://packages.buildkite.com/helm-linux/helm-debian/gpgkey | gpg --dearmor | tee /usr/share/keyrings/helm.gpg > /dev/null && \
    echo "deb [signed-by=/usr/share/keyrings/helm.gpg] https://packages.buildkite.com/helm-linux/helm-debian/any/ any main" | tee /etc/apt/sources.list.d/helm-stable-debian.list && \
    apt-get update && \
    apt-get install helm


CMD ["/bin/bash"]
