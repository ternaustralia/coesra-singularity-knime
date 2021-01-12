FROM ubuntu:18.04

RUN apt update -y && \
    apt-get install -y software-properties-common wget locales default-jre libswt-gtk-3-java libswt-gtk-3-jni && \
    locale-gen en_AU.UTF-8 && \ 
    mkdir /opt/knime && \
    cd /opt/knime && \
    wget --no-check-certificate https://download.knime.org/analytics-platform/linux/knime_3.3.1.linux.gtk.x86_64.tar.gz && \
    tar -xvzf /opt/knime/knime_3.3.1.linux.gtk.x86_64.tar.gz 

ENTRYPOINT exec /opt/knime/knime_3.3.1/knime 