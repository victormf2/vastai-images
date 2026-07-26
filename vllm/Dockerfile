FROM vastai/vllm:v0.24.0-cuda-13.0

LABEL org.opencontainers.image.source=https://github.com/victormf2/vastai-images

# Install updates
RUN export DEBIAN_FRONTEND=noninteractive; apt-get update
RUN export DEBIAN_FRONTEND=noninteractive; apt-get install --no-install-recommends -y openssh-server tmux git wget curl less locales sudo software-properties-common rsync

# Prevents tmux session on ssh
RUN touch /root/.no_auto_tmux
# Prevents vllm to automatically start
RUN sed -i 's/autostart=true/autostart=false/' /etc/supervisor/conf.d/vllm.conf

# Configure tailscale to automatically connect to my infrastructure
RUN curl -fsSL https://tailscale.com/install.sh | sh
COPY supervisor/tailscale.conf /etc/supervisor/conf.d/tailscale.conf
COPY supervisor/tailscale-login.sh /opt/supervisor-scripts/tailscale-login.sh
RUN chmod +x /opt/supervisor-scripts/tailscale-login.sh
COPY supervisor/tailscale-login.conf /etc/supervisor/conf.d/tailscale-login.conf

# AWS
# RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
# RUN ./aws/install
