FROM docka/centos:latest

RUN rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
RUN yum install -y yum-utils
RUN yum-config-manager --add-repo http://download.mono-project.com/repo/centos/
RUN echo "timeout=300" >> /etc/yum.repos.d/download.mono-project.com_repo_centos_.repo
RUN yum install -y epel-release mono-complete openssl-devel libunwind make automake libtool gcc-c++

RUN bash -c "curl -sSL https://github.com/libuv/libuv/archive/v1.4.2.tar.gz | tar zxfv - -C /usr/local/src"
RUN cd /usr/local/src/libuv-1.4.2 && \
    sh autogen.sh && \
    ./configure && \
    make && \
    make install && \
    rm -rf /usr/local/src/libuv-1.4.2
RUN cd ~/ && /usr/bin/env ldconfig
