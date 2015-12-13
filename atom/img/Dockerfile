FROM jess/chromium
MAINTAINER Jessica Frazelle <jess@docker.com>

# Install dependencies
RUN apt-get update && apt-get install -y \
    ca-certificates \
    curl \
    gconf2 \
    gconf-service \
    git \
    gvfs-bin \
    libasound2 \
    libgconf-2-4 \
    libgnome-keyring-dev \
    libgtk2.0-0 \
    libnotify4 \
    libnss3 \
    libxtst6 \
    stow \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

ENV ATOM_VERSION 1.3.0

RUN curl -sSL https://github.com/atom/atom/releases/download/v${ATOM_VERSION}/atom-amd64.deb -o /tmp/atom-amd64.deb \
    && dpkg -i /tmp/atom-amd64.deb \
    && rm -rf /tmp
ADD init.sh /root/init.sh
RUN chmod +x /root/init.sh

CMD /root/init.sh

# Autorun atom
ENTRYPOINT [ "atom", "--foreground" ]
