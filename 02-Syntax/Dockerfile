FROM imagename:optionaltag
RUN some_shell_command.sh
CMD ["executable","param1","param2"]
ENTRYPOINT ["executable", "param1", "param2"]
#https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact
EXPOSE 80
#EXPOSE assumes tcp, if you want udp as well, you can add another
EXPOSE 80/udp
ARG SOME_BUILD_ARG
ENV SOME_ENV_VAR "A Persistant Value"
ENV PERSIST_A_BUILD_ARG $SOME_BUILD_ARG
COPY from_build_context/* /var/inside/the/image/

#Above here is crucial, below here is merely useful

SHELL ["/bin/bash", "-c"]
LABEL key_value_pairs="for various metadata"
ADD https://example.com/some_big.tar.xz /var/decompressed/network/contents
VOLUME /share/this/externally
USER whoami
WORKDIR /var/www/html
ONBUILD RUN trigger_in_next_dockerfile.sh
STOPSIGNAL SIGTERM
#SIGTERM is default, SIGKILL and SIGINT are both valid too.
HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost/ || exit 1
