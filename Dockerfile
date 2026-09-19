FROM alpine:latest
RUN apk add --no-cache unzip wget
RUN wget -q https://github.com/XTLS/Xray-core/releases/download/v1.8.24/Xray-linux-64.zip && \
    unzip -o Xray-linux-64.zip && \
    chmod +x xray && \
    echo "eyJsb2ciOnsibG9nbGV2ZWwiOiJ3YXJuaW5nIn0sImluYm91bmRzIjpbeyJwb3J0Ijo4MDgwLCJwcm90b2NvbCI6InZtZXNzIiwic2V0dGluZ3MiOnsiY2xpZW50cyI6W3siaWQiOiJkMzQyZDExZS1kNDI0LTQ1ODMtYjM2ZS01MjRhYjFmMGFmYTQifV19LCJzdHJlYW1TZXR0aW5ncyI6eyJuZXR3b3JrIjoid3MiLCJzZWN1cml0eSI6Im5vbmUiLCJ3c1NldHRpbmdzIjp7InBhdGgiOiIvIn19fV0sIm91dGJvdW5kcyI6W3sicHJvdG9jb2wiOiJmcmVlZG9tIn1dfQ==" | base64 -d > config.json
EXPOSE 8080
CMD ["./xray", "run", "-config", "config.json"]
