# baseline image
FROM parasoft/soavirt:2024.2

ARG HOST_UID=992
ARG HOST_GID=992

# Setup parasoft user
USER root
ARG USER_HOME_DIR=/usr/local/parasoft

RUN rm -f /var/log/lastlog /var/log/faillog \
    && ln -s /dev/null /var/log/lastlog \
    && ln -s /dev/null /var/log/faillog \
    && groupmod -g ${HOST_GID} parasoft \
    && usermod -u ${HOST_UID} -g ${HOST_GID} parasoft

## Fix permissions
RUN chown -h -R ${HOST_UID}:${HOST_GID} ${USER_HOME_DIR}
RUN chmod +x ${USER_HOME_DIR}/soavirt/entrypoint.sh

RUN touch /var/log/lastlog && \
    touch /var/log/faillog

# Setup Chrome & dependencies for Web UI tests
RUN dnf install -y \
    liberation-fonts \
    xdg-utils \
    nss \
    alsa-lib \
    atk \
    cups-libs \
    gtk3 \
    ipa-gothic-fonts \
    libXcomposite \
    libXcursor \
    libXdamage \
    libXrandr \
    libXss \
    mesa-libEGL \
    mesa-libGL \
    pango \
    unzip && \
    rpm --import https://dl.google.com/linux/linux_signing_key.pub && \
    dnf install -y https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm && \
    dnf clean all && \
    rm -rf /var/cache/dnf

USER parasoft

# Define working directory.
WORKDIR ${USER_HOME_DIR}