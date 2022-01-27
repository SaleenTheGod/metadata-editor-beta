FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

# RUN DEBIAN_FRONTEND=noninteractive

WORKDIR /root/pwsh

# Install PWSH Core
# https://docs.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.2

RUN echo "Installing Pre-reqs and PWSH Core =====================>"                         &&    \ 
    apt-get update -y                                                                       &&    \ 
    apt-get install -y wget apt-transport-https software-properties-common git vim wget     &&    \
    wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb  &&    \ 
    dpkg -i packages-microsoft-prod.deb                                                     &&    \ 
    apt-get update -y                                                                       &&    \ 
    apt-get install -y powershell

WORKDIR /opt/metadata-editor

COPY container-files/ /opt/metadata-editor/container-files