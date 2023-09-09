FROM alpine
COPY _opt /opt/dotfiles
VOLUME /opt/dotfiles
CMD ["/bin/sh", "-c", "trap 'exit 147' TERM; tail -f /dev/null & wait ${!}"]
