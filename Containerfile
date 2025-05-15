FROM ubuntu:noble

RUN apt-get update && apt-get -y upgrade && apt-get install -y curl xz-utils && apt-get clean

RUN useradd -m factorio

USER factorio

WORKDIR /home/factorio

ENV PATH="/home/factorio/.local/bin:${PATH}"

RUN mkdir -p .local/bin .local/share/factorio/data .local/share/factorio/saves

RUN curl -sfL https://www.factorio.com/get-download/2.0.47/headless/linux64 | tar xJf - -C .local/share

RUN ln -s /home/factorio/.local/share/factorio/bin/x64/factorio .local/bin

COPY server-settings.json .local/share/factorio/data

CMD if [ ! -f .local/share/factorio/saves/default.zip ] ; then factorio --create .local/share/factorio/saves/default.zip --server-settings .local/share/factorio/data/server-settings.json ; fi && \
    exec factorio --start-server-load-latest .local/share/factorio/saves/default.zip --server-settings .local/share/factorio/data/server-settings.json
