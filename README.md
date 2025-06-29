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