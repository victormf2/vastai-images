Working commands on 92GB GPU:

vllm serve deepreinforce-ai/Ornith-1.0-9B --host 0.0.0.0 --port 8084

vllm serve /workspace/models/Qwen3.6-27B \
  --served-model-name "Qwen/Qwen3.6-27B" \
  --host 0.0.0.0 --port 8084 \
  --max-model-len auto --max-num-seqs 1 \
  --reasoning-parser qwen3 --enable-auto-tool-choice --tool-call-parser qwen3_coder \
  --tensor-parallel-size 2


Non Working commands on 92GB GPU:

vllm serve google/diffusiongemma-26B-A4B-it \
  --host 0.0.0.0 --port 8084 \
  --max-model-len auto --max-num-seqs 1 \
  --tensor-parallel-size 2 \
  --enforce-eager

```
vllm serve /workspace/models \
  --served-model-name "mistralai/Devstral-Small-2-24B-Instruct-2512" \
  --host 0.0.0.0 --port 8084 \
  --max-model-len auto --max-num-seqs 1 \
  --tokenizer_mode mistral --config_format mistral \
  --load_format mistral --tool-call-parser mistral \
  --enable-auto-tool-choice \
  --tensor-parallel-size 2
```

```
vllm serve mistralai/Mistral-Small-3.2-24B-Instruct-2506 \
  --host 0.0.0.0 --port 8084 \
  --max-model-len auto --max-num-seqs 1 \
  --tokenizer_mode mistral --config_format mistral \
  --load_format mistral --tool-call-parser mistral \
  --enable-auto-tool-choice --limit-mm-per-prompt '{"image":0}' \
  --tensor-parallel-size 2
```

Working commands on 24GB GPU:
```
vllm serve JetBrains/Mellum2-12B-A2.5B-Instruct \
  --host 0.0.0.0 --port 8084 \
  --enable-auto-tool-choice --tool-call-parser hermes \
  --max-num-seqs 1 --cpu-offload-gb 2.5 --gpu-memory-utilization 0.98
```

```
Too slow

vllm serve mistralai/Devstral-Small-2-24B-Instruct-2512 \
  --host 0.0.0.0 \
  --port 8084 \
  --max-model-len auto \
  --tool-call-parser mistral \
  --enable-auto-tool-choice \
  --config-format mistral \
  --load-format mistral \
  --tokenizer-mode mistral \
  --limit-mm-per-prompt '{"image":0}' \
  --max-num-seqs 1 \
  --gpu-memory-utilization 0.98 \
  --cpu-offload-gb 5
```



Próximo a testar:
- CWM (Code Generation with World Modeling)