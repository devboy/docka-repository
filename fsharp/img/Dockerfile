FROM docka/centos:latest

RUN rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
RUN yum install -y yum-utils
RUN yum-config-manager --add-repo http://download.mono-project.com/repo/centos/ 
RUN echo "timeout=300" >> /etc/yum.repos.d/download.mono-project.com_repo_centos_.repo
RUN yum install -y epel-release mono-complete fsharp
RUN mozroots --import --sync
ADD paket.bootstrapper.exe .
RUN mono paket.bootstrapper.exe && rm paket.bootstrapper.exe
RUN mv paket.exe /usr/local/bin/paket.exe
RUN echo "#!/usr/bin/env bash"\
         "mono /usr/local/bin/paket.exe $@" > /usr/bin/paket
