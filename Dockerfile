FROM romancin/tinymediamanager:latest-v4

COPY rootfs/ /

ENV TZ=Asia/Shanghai
ENV DISPLAY_WIDTH=1920
ENV DISPLAY_HEIGHT=1080
