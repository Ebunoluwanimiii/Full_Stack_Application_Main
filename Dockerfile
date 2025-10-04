# Base image setup
ADD alpine-minirootfs-3.22.1-x86_64.tar.gz / # buildkit

# Set environment variables
ENV JAVA_HOME=/opt/java/openjdk \
    PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
    LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8 \
    JAVA_VERSION=jdk-17.0.16+8 \
    APP_HOME=/usr/src/app

# Copy entrypoint script and ensure it's executable
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh

# Set entrypoint to forward CMD arguments
ENTRYPOINT ["/__cacert_entrypoint.sh"]

# Expose application port
EXPOSE 8080

# Copy application JAR
COPY file:4bb3bfc9c28b6fe4df250583a238d27eb800909f4f556cd91ce71b7b79f2a87f in /usr/src/app/app.jar

# Set working directory
WORKDIR /usr/src/app

# Launch the application
CMD ["java", "-jar", "app.jar"]
