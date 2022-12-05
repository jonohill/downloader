FROM mcr.microsoft.com/devcontainers/base:bullseye

RUN apt-get update && apt-get install -y \
    ffmpeg \
    python3

RUN curl -fL -o /usr/local/bin/yt-dlp https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp && \
    chmod +x /usr/local/bin/yt-dlp

COPY --from=cloudflare/cloudflared /usr/local/bin/cloudflared /usr/local/bin/cloudflared
