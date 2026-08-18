FROM lscr.io/linuxserver/mysql-workbench:8.0.47-ls78

ENV START_DOCKER=false \
    HARDEN_DESKTOP=true \
    HARDEN_OPENBOX=true \
    NO_DECOR=true

COPY --chown=abc:abc connections.xml /config/.mysql/workbench/connections.xml
