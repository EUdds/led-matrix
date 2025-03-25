FROM --platform=linux/arm64 ubuntu:22.04

# Set Bazel version
ENV BAZEL_VERSION=7.6.0
ENV TARGETARCH=arm64

# Accept build args for UID/GID
ARG USER_ID
ARG GROUP_ID

# Install basic dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    python3 \
    zip \
    unzip \
    gcc \
    g++ \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd -g ${GROUP_ID} dev && \
    useradd -l -u ${USER_ID} -g ${GROUP_ID} -m dev

# Install Bazel
WORKDIR /usr/local/bin
RUN curl \
    --fail \
    --location \
    --remote-name \
    "https://github.com/bazelbuild/bazel/releases/download/7.6.0/bazel-7.6.0-linux-arm64" \
    && mv "bazel-${BAZEL_VERSION}-linux-${TARGETARCH}" bazel \
    && chmod +x bazel


WORKDIR /workspace
RUN chown -R dev:dev /workspace

USER dev