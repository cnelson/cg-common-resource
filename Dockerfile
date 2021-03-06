FROM gliderlabs/alpine

RUN apk --no-cache --update add openssl ca-certificates

ADD check /opt/resource/check
ADD in    /opt/resource/in
ADD out   /opt/resource/out

RUN chmod +x /opt/resource/out /opt/resource/in /opt/resource/check
