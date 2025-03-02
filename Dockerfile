FROM alpine:latest

WORKDIR /app

RUN apk add --no-cache curl sqlite

RUN curl -fsSL -o pocketbase.zip https://github.com/pocketbase/pocketbase/releases/latest/download/pocketbase_linux_amd64.zip \
    && unzip pocketbase.zip \
    && rm pocketbase.zip \
    && chmod +x pocketbase

EXPOSE 8090

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
