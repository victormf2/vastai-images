# vastai images

Images to use on Vast.ai and other LLM providers

Builds:
```bash
# vllm
docker build -t ghcr.io/victormf2/vastai-vllm:v0.24.0-cuda-13.0 -f ./vllm/Dockerfile .

# sglang
docker build -t ghcr.io/victormf2/vastai-sglang:v0.5.13.post1-cuda-13.0 -f ./sglang/Dockerfile .
```