# baseline image
FROM parasoft/jtest:2024.2

ARG HOST_UID=995
ARG HOST_GID=991

## Permissions to create dirs
USER root
ARG USER_HOME_DIR=/home/parasoft

# Install JDK 17
ARG JAVA_VER=11
ARG JDK_VERSION=jdk-11.0.25+9
ENV JAVA_HOME=${USER_HOME_DIR}/${JDK_VERSION}

# Download Java 17
RUN wget https://aka.ms/download-jdk/microsoft-jdk-11.0.25-linux-x64.tar.gz \
    && tar xvzf microsoft-jdk-11.0.25-linux-x64.tar.gz -C ${USER_HOME_DIR}

# Update alternatives to use Java 17
RUN update-alternatives --install /usr/bin/java java /${USER_HOME_DIR}/${JDK_VERSION}/bin/java 1 \
    && update-alternatives --install /usr/bin/javac javac /${USER_HOME_DIR}/${JDK_VERSION}/bin/javac 1

ENV PATH="${JAVA_HOME}/bin:${PATH}"

# Install Gradle
ARG GRADLE_VERSION="7.6.4"
# install git-lfs and unzip commands
# be sure to use the 'root' user to install new packages
RUN yum -y install git-lfs && yum -y install unzip

# install gradle
WORKDIR /opt
RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip && \
    unzip gradle-${GRADLE_VERSION}-bin.zip && \
    rm -f gradle-${GRADLE_VERSION}-bin.zip


# integrate Jtest with lombok 
WORKDIR /opt/parasoft/jtest/integration/lombok
RUN ls -la
RUN java -version
RUN java -jar jtest-integration-lombok.jar

## Copy Deps
COPY jtestcli.properties /home/parasoft/jtestcli.properties

## Fix permissions
RUN chown -h -R ${HOST_UID}:${HOST_GID} ${USER_HOME_DIR}

## Switch user back and configure MVN
USER parasoft:parasoft

ENV PATH="/opt/gradle-${GRADLE_VERSION}/bin:${PATH}"

# Define working directory.
WORKDIR ${USER_HOME_DIR}

# Define commonly used JAVA_HOME variables
CMD ["gradle", "--version"]