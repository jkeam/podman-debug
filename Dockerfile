FROM quay.io/podman/stable
RUN dnf -y update \
    && dnf install -y nodejs \
	  && dnf install -y java-11-openjdk.x86_64 \
	  && dnf install -y dotnet-sdk-7.0 \
  	&& dnf clean all \
  	&& rm -rf /var/cache/yum
