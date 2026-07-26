sglang serve \
  --model-path mistralai/Mistral-Small-3.2-24B-Instruct-2506 \
  --host 0.0.0.0 --port 8084 \
  --tool-call-parser mistral \
  --tp 1 