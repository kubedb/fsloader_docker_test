FROM scratch
RUN apk --update add sh runit
ADD runit /runit
ADD fsloader /fsloader
RUN chmod +x /fsloader/*
RUN chmod +x /runit/*
RUN mkdir -p /etc/service/fsloader
RUN ln -s /runit/run /etc/service/fsloader/run
RUN apk --update add runit
RUN mv /fsloader/fsloader-alpine-amd64 /usr/bin/fsloaderalpine
RUN mv /fsloader/fsloader /usr/bin/fsloader
ENTRYPOINT ["./runit/run_runit.sh"]