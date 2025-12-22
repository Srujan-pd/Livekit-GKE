This is the files architecture for your LiveKit + Agent on GKE setup.

```text
livekit-gke/
│
├── terraform/                    # GKE infrastructure 
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars
│
├── k8s/                           # Kubernetes manifests for creating and deployment of the agent.
│   ├── namespace.yaml
│   │
│   ├── livekit/
│   │   ├── config.yaml            
│   │   ├── livekit-config-secret.yaml
│   │   ├── livekit-deployment.yaml
│   │   └── livekit-service.yaml
│   │
│   ├── agent/
│   │   ├── agent-deployment.yaml
│   │   └── llm-secrets.yaml
│
 ── agent/                         #Agent code we will have to add here
    ├── agent.py
    ├── requirements.txt
    └── Dockerfile
```

