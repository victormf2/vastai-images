FROM vastai/sglang:v0.5.13.post1-cuda-13.0
LABEL org.opencontainers.image.source=https://github.com/victormf2/vastai-images

# Prevents tmux session on ssh
RUN touch /root/.no_auto_tmux

# Prevents sglang from automatically starting
RUN sed -i 's/autostart=true/autostart=false/' /etc/supervisor/conf.d/sglang.conf

# Configure tailscale to automatically connect to my infrastructure
RUN curl -fsSL https://tailscale.com/install.sh | sh
COPY supervisor/tailscale.conf /etc/supervisor/conf.d/tailscale.conf
COPY supervisor/tailscale-login.sh /opt/supervisor-scripts/tailscale-login.sh
RUN chmod +x /opt/supervisor-scripts/tailscale-login.sh
COPY supervisor/tailscale-login.conf /etc/supervisor/conf.d/tailscale-login.conf