FROM vastai/vllm:v0.23.0-cuda-13.0

LABEL org.opencontainers.image.source=https://github.com/victormf2/vastai-images

RUN touch /root/.no_auto_tmux
RUN sed -i 's/autostart=true/autostart=false/' /etc/supervisor/conf.d/vllm.conf

RUN curl -fsSL https://tailscale.com/install.sh | sh
COPY supervisor/tailscale.conf /etc/supervisor/conf.d/tailscale.conf
COPY supervisor/tailscale-login.sh /opt/supervisor-scripts/tailscale-login.sh
RUN chmod +x /opt/supervisor-scripts/tailscale-login.sh
COPY supervisor/tailscale-login.conf /etc/supervisor/conf.d/tailscale-login.conf