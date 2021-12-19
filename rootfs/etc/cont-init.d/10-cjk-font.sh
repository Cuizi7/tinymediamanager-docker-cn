#!/usr/bin/with-contenv sh

set -e # Exit immediately if a command exits with a non-zero status.
set -u # Treat unset variables as an error.

log() {
    echo "[cont-init.d] $(basename $0): $*"
}

if fc-list | grep -q "WenQuanYi Zen Hei"; then
    log "CJK font already installed."
else
    log "installing CJK font..."
    if [ -n "$(which apk)" ]; then
        add-pkg wqy-zenhei --repository http://mirrors.tuna.tsinghua.edu.cn/alpine/edge/testing 2>&1 | sed "s/^/[cont-init.d] $(basename $0): /"
    else
        add-pkg fonts-wqy-zenhei 2>&1 | sed "s/^/[cont-init.d] $(basename $0): /"
    fi
fi

# vim: set ft=sh :