# Azure Network Test - Hello World

A lightweight Node.js HTTP server designed for testing Azure network configurations, connectivity, and container deployments. This simple application serves as an ideal target for validating network policies, load balancers, and service routing.

## 🎯 Overview

This repository contains a minimal HTTP server that responds with "Hello from Contentstack" on port 3000. It's containerized using Docker and optimized for quick deployment in Azure environments for network testing scenarios.

## ✨ Features

- **Lightweight**: Built on Node.js with no external dependencies
- **Dockerized**: Ready to deploy with a minimal Docker image (~50MB)
- **Simple Health Check**: Easy to test with curl or browser
- **Azure-Ready**: Perfect for testing Azure Container Instances, AKS, or App Services

## 📋 Prerequisites

### For Local Development
- Node.js 12.x or higher
- npm (comes with Node.js)

### For Docker Deployment
- Docker Engine 20.x or higher
- Docker CLI

## 🚀 Quick Start

### Running Locally (Node.js)

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/azure-network-test-hello-world.git
cd azure-network-test-hello-world

# Run the server
node hello.js
```

The server will start on port 3000. You should see:
```
Server running
```

### Running with Docker

```bash
# Build the Docker image
docker build -t azure-hello-world .

# Run the container
docker run -p 3000:3000 azure-hello-world
```

## 🧪 Testing the Application

Once the server is running, test it with any of these methods:

### Using curl
```bash
curl http://localhost:3000
```

### Using a Web Browser
Navigate to: `http://localhost:3000`

### Expected Response
```
Hello from Contentstack
```

## 🔧 Configuration

### Port Configuration
The application listens on port **3000** by default. To modify:
1. Update the port in `hello.js` (line 8)
2. Rebuild the Docker image if using containers

### Response Message
To customize the response message:
1. Edit the `response.end()` call in `hello.js` (line 7)
2. Rebuild and redeploy

## 📦 Docker Details

**Base Image**: `node:25-alpine`  
**Image Size**: ~50MB (compressed)  
**Container Port**: 3000

### Docker Commands Reference

```bash
# Build with custom tag
docker build -t my-custom-tag .

# Run with custom port mapping
docker run -p 8080:3000 azure-hello-world

# Run in detached mode
docker run -d -p 3000:3000 azure-hello-world

# Stop running container
docker stop $(docker ps -q --filter ancestor=azure-hello-world)
```

## 🌐 Azure Deployment Use Cases

This application is ideal for testing:

- **Azure Container Instances (ACI)**: Quick container deployment validation
- **Azure Kubernetes Service (AKS)**: Pod connectivity and service mesh testing
- **Azure App Service**: Container-based web app deployment
- **Virtual Network Integration**: Private endpoint and VNET injection testing
- **Load Balancer Configuration**: Backend pool health checks
- **Application Gateway**: HTTP routing and path-based routing
- **Network Security Groups (NSG)**: Inbound/outbound rule validation
- **Azure Front Door**: Origin health probes

## 🔍 Troubleshooting

### Server not accessible
- Verify the server is running: Check console output for "Server running"
- Check port availability: `lsof -i :3000` (macOS/Linux) or `netstat -ano | findstr :3000` (Windows)
- Verify firewall rules allow port 3000

### Docker container issues
- Check container logs: `docker logs <container_id>`
- Verify port mapping: `docker ps`
- Ensure Docker daemon is running

## 📄 License

This is a test repository for educational and testing purposes.

## 🤝 Contributing

This is a simple test repository. Feel free to fork and modify for your specific testing needs.

---

**Note**: This application is intended for testing and development purposes only. Not recommended for production use without proper security hardening and error handling.
