FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y \
        awscli \
        curl \
        netcat-openbsd \
        jq \
        git \
        ssh \
        nano \
        unzip \
        tar \
        htop \
        nmap \
        tree \
        watch \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY --from=argoproj/argocd:v2.6.15 /usr/local/bin/argocd /usr/local/bin/argocd
COPY --from=bitnami/kubectl:1.28.7 /opt/bitnami/kubectl/bin/kubectl /usr/local/bin/kubectl

# Aliases
RUN ln -s /usr/local/bin/kubectl /usr/local/bin/k

WORKDIR /work

CMD [ "/bin/bash" ]
