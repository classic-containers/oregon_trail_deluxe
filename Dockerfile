FROM classiccontainers/dosbox

ADD --chown=dosbox:dosbox https://archive.org/download/oregon-trail-deluxe/Oregon%20Trail%20Deluxe.zip oregon_trail.zip

RUN unzip oregon_trail.zip
COPY --chown=dosbox:dosbox dosbox_oregon.conf dosbox_oregon.conf

CMD ["-conf", "dosbox_oregon.conf"]