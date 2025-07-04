# AKS + GitHub Actions CI/CD Demo 🚀

This project demonstrates a complete CI/CD pipeline using **GitHub Actions** to build, push, and deploy a containerized Python Flask application to **Azure Kubernetes Service (AKS)**.

## 🔧 Tech Stack
- Azure CLI & AKS
- GitHub Actions
- Docker
- Kubernetes (manifests or Helm)
- Python Flask (sample app)

## 📦 Features
- Automatic build & push to Azure Container Registry (ACR)
- Secure AKS deployment using GitHub Secrets
- Kubernetes manifests for Deployment, Service, and Ingress
- Dev/Stage/Prod-ready structure

## 🚀 Deployment Flow
1. Push code to `main` branch
2. GitHub Actions triggers workflow
3. Builds Docker image & pushes to ACR
4. Deploys to AKS cluster using `kubectl`

## 🔐 Secrets Used
- `AZURE_CREDENTIALS`
- `REGISTRY_NAME`
- `CLUSTER_NAME`
- `RESOURCE_GROUP`

## 📸 Demo
![CI/CD flow diagram](https://user-images.githubusercontent.com/demo-image)

---

✅ Use this repo to showcase hands-on AKS and DevOps experience during interviews.




# AKS + GitHub Actions CI/CD Deployment

This project demonstrates how to deploy a simple Python Flask application to Azure Kubernetes Service (AKS) using GitHub Actions.

## 📦 Prerequisites

- Azure Subscription: [Sign up for free](https://azure.microsoft.com/en-us/free/)
- GitHub Account
- Azure CLI installed: https://learn.microsoft.com/en-us/cli/azure/install-azure-cli
- Docker installed: https://www.docker.com/products/docker-desktop
- Python 3.8+ installed

## 📁 Project Structure

```
D:\FSU-Classes\Rep\aks-github-actions-demo
|-- README.md
|-- app
|   |-- Dockerfile
|   |   `-- app.cpython-310.pyc
|   |-- app.py
|   |-- config.py
|   |-- static
|   |   `-- style.css
|   `-- templates
|       |-- audio.html
|       |-- chatbot.html
|       |-- essay.html
|       |-- image.html
|       |-- index.html
|       |-- layout.html
|       `-- summary.html
|-- k8s
|   |-- deployment.yaml
|   |-- ingress.yaml
|   `-- service.yaml
|-- requirements.txt
```

## 🚀 Steps to Reproduce This Project

### 1. Create Azure Resources

```bash
az login
az group create --name aks-rg --location eastus
az aks create --resource-group aks-rg --name aks-cluster --node-count 1 --enable-addons monitoring --generate-ssh-keys
az acr create --resource-group aks-rg --name myAcr123456 --sku Basic
az aks update --name aks-cluster --resource-group aks-rg --attach-acr myAcr123456
```

### 2. Clone the Repository

```bash
git clone https://github.com/your-username/aks-github-actions-demo.git
cd aks-github-actions-demo
```

### 3. Push App and Pipeline

- Commit your code and push it to GitHub.
- GitHub Actions will build the Docker image and deploy it to AKS using Kubernetes manifests.

### 4. Access the App

- Use `kubectl get svc` to find the LoadBalancer IP
- Open the IP in your browser

## ✅ Outcome

You’ll have a Flask app running on AKS deployed via GitHub Actions with full CI/CD automation.



mkdir -p aks-github-actions-demo/{.github/workflows,app,k8s}

# Create empty files
touch aks-github-actions-demo/.github/workflows/deploy.yml
touch aks-github-actions-demo/app/{app.py,Dockerfile}
touch aks-github-actions-demo/k8s/{deployment.yaml,service.yaml,ingress.yaml}
touch aks-github-actions-demo/README.md


Cleanup (if rerunning)
rm -rf aks-github-actions-demo



# 🚀 AKS + GitHub Actions Deployment (Flask AI App)

This project demonstrates a full CI/CD pipeline: deploying a Python Flask AI app to **Azure Kubernetes Service (AKS)** using **GitHub Actions**, **Docker**, and **Kubernetes manifests**.

> ✅ Designed for beginners – follow step-by-step without prior DevOps knowledge!

---

## 📁 Project Structure

```
aks-github-actions-demo/
├── app/
│   ├── app.py               # Flask app (uses OpenAI APIs)
│   └── Dockerfile           # Containerize the app
├── config.py                # Stores your OpenAI API key (DO NOT COMMIT)
├── k8s/
│   ├── deployment.yaml      # Kubernetes Deployment
│   ├── service.yaml         # Exposes app via LoadBalancer
│   └── ingress.yaml         # Optional Ingress config
├── static/                  # Style files
├── templates/               # HTML templates (Jinja2)
├── .github/workflows/
│   └── deploy.yml           # GitHub Actions CI/CD pipeline
└── README.md
```

---

## 🧰 Prerequisites

| Tool             | How to Get It                          |
|------------------|----------------------------------------|
| Azure Account     | [Free signup](https://azure.microsoft.com/en-us/free/) |
| GitHub Account    | [github.com](https://github.com)       |
| Azure CLI         | https://aka.ms/installazurecliwindows |
| Docker Desktop    | https://www.docker.com/products/docker-desktop |
| Python (3.8+)     | https://www.python.org/downloads/      |
| kubectl           | https://kubernetes.io/docs/tasks/tools |
| GitHub Actions    | Enabled automatically in your repo     |

---

## 🔧 Step-by-Step Setup

### 1. Clone this Repository

```bash
git clone https://github.com/<your-username>/aks-github-actions-demo.git
cd aks-github-actions-demo
```

---

### 2. Create Azure Resources

```bash
# Login to Azure
az login

# Create resource group
az group create --name aks-rg --location eastus

# Create AKS Cluster
az aks create --resource-group aks-rg --name aks-cluster --node-count 1 --generate-ssh-keys

# Create Azure Container Registry
az acr create --resource-group aks-rg --name <your-acr-name> --sku Basic

# Attach ACR to AKS
az aks update -n aks-cluster -g aks-rg --attach-acr <your-acr-name>
```

---

### 3. Prepare GitHub Secrets

Go to your GitHub repo → Settings → Secrets → **Actions** → New repository secret:

| Secret Name           | Value                                                              |
|------------------------|--------------------------------------------------------------------|
| `AZURE_CREDENTIALS`    | Output from: `az ad sp create-for-rbac --name github-actions-sp --role contributor --scopes /subscriptions/<sub-id> --sdk-auth` |
| `ACR_NAME`             | Your ACR login server (e.g. `myacr.azurecr.io`)                   |

---

### 4. Build + Deploy with GitHub Actions

> Just push your changes to the `main` branch!

GitHub Actions will:
1. Build the Docker image
2. Push to Azure Container Registry
3. Deploy to AKS using `kubectl apply`

---

## 🌐 Access Your App

After deployment, get the public IP:

```bash
kubectl get svc flask-service
```

Copy the `EXTERNAL-IP` and open it in a browser!

---

## ✅ Result

You’ll have a full-stack, containerized, AI-powered Flask app deployed on Azure Kubernetes — with automated CI/CD.

---

## 🙋‍♂️ Need Help?

Feel free to record a Loom walkthrough using:
- `kubectl get pods`, `get svc`
- A quick explanation of `deploy.yml` in `.github/workflows/`
- Demo of your live running app

Happy building!



Step 1: Install Azure CLI (Windows)
Visit:
👉 https://aka.ms/installazurecliwindows

Download and install the MSI installer

After installation completes:

Restart your terminal

Then verify with:
az --version
✅ Step 2: Login to Azure
Once installed, run:


az login
A browser window will open. Log in with your Azure account.



README.md for aks-github-actions-demo
markdown
Copy code
# AKS + GitHub Actions Self-Hosted Runner on Kubernetes (ARC)

This project demonstrates how to deploy and configure a **self-hosted GitHub Actions runner on Azure Kubernetes Service (AKS)** using the official [actions-runner-controller](https://github.com/actions/actions-runner-controller) Helm chart.

---

## 🧱 Project Structure

aks-github-actions-demo/
├── .github/
│ └── workflows/
│ └── build.yaml # CI pipeline to deploy to AKS
├── manifests/
│ ├── arc-deployment.yaml # Runner Deployment (Optional for Manual)
│ └── github-runner-secret.yaml # GitHub PAT (Only if not using OIDC)
├── helm/
│ └── values.yaml # Custom Helm config (optional)
├── README.md
└── scripts/ # Utility setup scripts (coming soon)

yaml
Copy code

---

## 🔧 Prerequisites

- ✅ Azure CLI installed
- ✅ Logged in to Azure
- ✅ Azure Subscription with AKS access
- ✅ GitHub account with admin access (to create App or PAT)

---

## 🚀 Step-by-Step Guide

### ✅ Step 1: Install Azure CLI (If not already)

[Download Azure CLI for Windows](https://aka.ms/installazurecliwindows)

```bash
az login
az account set --subscription "<SUBSCRIPTION_NAME>"
✅ Step 2: Create AKS Cluster
bash
Copy code
RESOURCE_GROUP=aks-rg
CLUSTER_NAME=aks-cluster
az group create --name $RESOURCE_GROUP --location eastus

az aks create \
  --resource-group $RESOURCE_GROUP \
  --name $CLUSTER_NAME \
  --node-count 1 \
  --node-vm-size Standard_B2s \
  --generate-ssh-keys

az aks get-credentials --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME
kubectl get nodes
✅ Step 3: Install Cert-Manager
bash
Copy code
kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/latest/download/cert-manager.yaml
kubectl get pods --namespace cert-manager
✅ Step 4: Install ARC (Actions Runner Controller)
bash
Copy code
helm repo add actions-runner-controller https://actions-runner-controller.github.io/actions-runner-controller
helm repo update

kubectl create namespace actions-runner-system

helm install arc actions-runner-controller/actions-runner-controller \
  --namespace actions-runner-system \
  --set authSecret.create=true \
  --set githubWebhookServer.enabled=true
✅ Step 5: Set Up GitHub Repository
If you haven’t created the GitHub repo yet:

bash
Copy code
git init
git remote add origin https://github.com/<your-username>/aks-github-actions-demo.git
git branch -M main
git add .
git commit -m "Initial commit"
git push -u origin main
✅ Step 6: Configure GitHub Runner Authentication
You have two options:

🔒 Option 1: Secure GitHub App with OIDC (Recommended)
No need to store Personal Access Tokens!

Create a GitHub App with actions:write, actions:read, administration, and repository scopes.

Configure ARC to use this App and enable OIDC trust with Azure.

📌 Let me know if you want the full walkthrough for this.

🔐 Option 2: Use PAT (Personal Access Token)
If you're using PAT instead of GitHub App:

Create a token with repo and admin:repo_hook scopes

Save as Kubernetes secret:

bash
Copy code
kubectl create secret generic controller-manager \
  -n actions-runner-system \
  --from-literal=github_token='<YOUR_PAT>'
✅ Step 7: Create Self-Hosted Runner Resource
yaml
Copy code
# .github/workflows/build.yaml (example)
name: Build and Deploy

on:
  push:
    branches: [ main ]

jobs:
  build:
    runs-on: self-hosted
    steps:
      - uses: actions/checkout@v3
      - name: Print Hello
        run: echo "Hello from AKS runner!"
📎 Resources
actions-runner-controller Docs

Azure AKS CLI Guide

OIDC Setup Guide

🧼 Cleanup
bash
Copy code
az group delete --name $RESOURCE_GROUP --yes --no-wait
📣 Contribution
Open PRs or issues if you want to extend the demo with:

Ingress + TLS

Horizontal scaling

GitOps ArgoCD integration

yaml
Copy code

---

Let me know if you want:

- A **`values.yaml`** for fine-tuned ARC configuration
- Full **OIDC GitHub App YAML walkthrough**
- An updated **GitHub Actions workflow** sample for deployment

Would you like this README copied into your local project too?




GitHub App with OIDC Integration for ARC
This method will avoid using GitHub PAT secrets and use OIDC federation to securely authenticate runners on your AKS cluster.

✅ Prerequisites:
Admin access to the GitHub organization (or repo)

ARC (Actions Runner Controller) already installed in your AKS cluster ✅ (you did this)

Cert-Manager installed ✅

Helm setup done ✅

GitHub repo available ✅ ssdaggupati/aks-github-actions-demo

1️⃣ Create a GitHub App for ARC
Go to: https://github.com/settings/apps/new
(If you're doing this for an organization, go to: https://github.com/organizations/YOUR_ORG/settings/apps/new)

Fill in the form:

GitHub App name: ssdaggupati-aks-arc (or anything unique)

Homepage URL: https://github.com/ssdaggupati

Callback URL: Leave blank

Webhook URL: http://arc-actions-runner-controller-webhook.actions-runner-system.svc.cluster.local
(This works internally in cluster)

Webhook Secret: Leave blank (ARC doesn’t use it)

Permissions:

Repository:

Actions: Read & write

Administration: Read

Metadata: Read

Contents: Read

Self-hosted runners: Read & write

Subscribe to events:

workflow_job

Where can this GitHub App be installed?

Choose: Only on this account

Click Create GitHub App.


the controller-manager secret
You already deleted it — now re-run this to recreate it properly:

bash
Copy code
kubectl create secret generic controller-manager \
  --namespace actions-runner-system \
  --from-literal=github_app_id=1481766 \
  --from-literal=github_app_installation_id=73567236 \
  --from-literal=github_app_client_id=Iv23liNTY4ToRjnhmEzX \
  --from-file=github_app_private_key="C:/Users/shyam/Downloads/ssdaggupati-aks-arc.2025-06-29.private-key.pem"
✅ Make sure to use / instead of \ for Windows paths in Git Bash.



Perfect! Your ARC (Actions Runner Controller) has been successfully upgraded and deployed.

Now we’ll continue with the next step in the deployment process — creating the Runner resource to connect your AKS-hosted runner to the GitHub repo (ssdaggupati/aks-github-actions-demo), using OIDC-based GitHub App authentication.

✅ Step: Create the Runner YAML
📁 Create this file in the manifests/ folder:

bash
Copy code
nano manifests/arc-deployment.yaml
📄 Paste this manifest (OIDC-based Runner Deployment):

yaml
Copy code
apiVersion: actions.summerwind.dev/v1alpha1
kind: RunnerDeployment
metadata:
  name: arc-runner
  namespace: actions-runner-system
spec:
  replicas: 1
  template:
    spec:
      repository: ssdaggupati/aks-github-actions-demo
🔐 This works because you're using a GitHub App with OIDC (no secrets or PAT required).

🚀 Apply the RunnerDeployment
bash
Copy code
kubectl apply -f manifests/arc-deployment.yaml
✅ Confirm Runner Pod is Running:
bash
Copy code
kubectl get pods -n actions-runner-system -l app.kubernetes.io/name=runner
You should see a Running pod within a minute or two.

# dummy change
# Trigger Deployment


Here are all the categorized commands used in this conversation for setting up GitHub Actions Runner Controller (ARC) with GitHub App + OIDC on AKS:

🧹 Cleanup Commands
bash
Copy code
helm list -n arc-systems
helm uninstall arc -n arc-systems
helm uninstall arc-runner-set -n arc-systems
kubectl delete namespace arc-systems
kubectl delete clusterrole arc-actions-runner-controller-proxy --ignore-not-found
kubectl delete clusterrolebinding arc-actions-runner-controller-proxy-binding --ignore-not-found
helm list -A
kubectl get namespaces | grep arc
kubectl get clusterrole | grep arc
kubectl get clusterrolebinding | grep arc
kubectl get pods --all-namespaces | grep arc
📦 Helm Repo Setup
bash
Copy code
helm repo add actions-runner-controller https://actions-runner-controller.github.io/actions-runner-controller
helm repo update
🔐 Create GitHub App Secret in Kubernetes
bash
Copy code
kubectl create namespace arc-systems

kubectl create secret generic controller-manager \
  --namespace arc-systems \
  --from-literal=github_app_id=1481766 \
  --from-literal=github_app_installation_id=73567236 \
  --from-file=github_app_private_key="C:/Users/shyam/Downloads/ssdaggupati-aks-arc.2025-06-29.private-key.pem"
🚀 Install ARC Controller via Helm
bash
Copy code
helm upgrade --install arc \
  actions-runner-controller/actions-runner-controller \
  --namespace arc-systems \
  -f helm/values.yaml
🏃 Install Runner Scale Set (GitHub App + OIDC)
bash
Copy code
# Create a values.runner.yaml first (not shown here)
cd helm
nano values.runner.yaml
cd ..

helm upgrade --install arc-runner-set \
  actions-runner-controller/gha-runner-scale-set \
  --namespace arc-systems \
  -f helm/values.runner.yaml
🔍 Validation and Debug
bash
Copy code
kubectl get pods -n arc-systems
Let me know if you want these commands turned into a single runnable .sh script or a README-style documentation block.