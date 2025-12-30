# Base image
FROM parasoft/soavirt:2024.2

# Host UID/GID mapping for Jenkins
ARG HOST_UID=992
ARG HOST_GID=992
ARG USER_HOME_DIR=/usr/local/parasoft

# Switch to root to configure user and install packages
USER root

# Setup parasoft user with proper UID/GID
RUN rm -f /var/log/lastlog /var/log/faillog \
    && ln -s /dev/null /var/log/lastlog \
    && ln -s /dev/null /var/log/faillog \
    && groupmod -g ${HOST_GID} parasoft \
    && usermod -u ${HOST_UID} -g ${HOST_GID} parasoft

# Fix permissions
RUN chown -h -R ${HOST_UID}:${HOST_GID} ${USER_HOME_DIR}
RUN chmod +x ${USER_HOME_DIR}/soavirt/entrypoint.sh

# Ensure log files exist
RUN touch /var/log/lastlog && touch /var/log/faillog

RUN dnf install -y \
        liberation-fonts \
        xdg-utils \
        nss \
        alsa-lib \
        atk \
        cups-libs \
        gtk3 \
        libXcomposite \
        libXcursor \
        libXdamage \
        libXrandr \
        libXss \
        mesa-libGL \
        pango \
        unzip \
    && rpm --import https://dl.google.com/linux/linux_signing_key.pub \
    && dnf install -y --nobest https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm \
    && dnf clean all \
    && rm -rf /var/cache/dnf

# Switch back to parasoft user
USER parasoft

# Set working directory
WORKDIR ${USER_HOME_DIR}
