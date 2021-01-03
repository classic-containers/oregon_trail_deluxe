FROM classiccontainers/dosbox

# Retrieve game data from archive.org
ADD --chown=dosbox:dosbox https://archive.org/download/oregon-trail-deluxe/Oregon%20Trail%20Deluxe.zip oregon_trail.zip

# Extract game, remove original zip
RUN unzip oregon_trail.zip && \
    rm oregon_trail.zip

# Copy dosbox conf with oregon trail autoexec
COPY --chown=dosbox:dosbox dosbox_oregon.conf dosbox_oregon.conf

# Add above dosbox conf to dosbox command line
CMD ["-conf", "dosbox_oregon.conf"]