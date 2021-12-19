FROM romancin/tinymediamanager:latest-v4

COPY rootfs/ /

ENV TZ=Asia/Shanghai
ENV DISPLAY_WIDTH=1920
ENV DISPLAY_HEIGHT=1080

# Metadata.
LABEL \
      org.label-schema.name="tinymediamanager-cn" \
      org.label-schema.description="中文用户适用的 TinyMediaManager Docker 镜像" \
      org.label-schema.vcs-url="https://github.com/Cuizi7/tinymediamanager-docker-cn" \
      org.label-schema.schema-version="1.0"