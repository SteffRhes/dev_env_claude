FROM debian:latest
RUN apt update
RUN apt install -y curl sudo
RUN useradd -m -s /bin/bash -u 1000 steff-pdm
RUN echo "steff-pdm ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/steff-pdm
RUN chmod 0440 /etc/sudoers.d/steff-pdm
USER steff-pdm
RUN curl -fsSL https://claude.ai/install.sh | bash
RUN echo 'export PATH="$HOME/.local/bin:$PATH"' >> /home/steff-pdm/.bashrc
COPY settings.json /home/steff-pdm/.claude/settings.json

