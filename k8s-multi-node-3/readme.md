# K8s Multi-Node Cluster

## Brief
This document explains how to set up a Kubernetes cluster with one master and two worker nodes, and demonstrates the automation of model training using a simple linear regression model.

## Status
進行中

## Details
The setup involves building and pushing a Docker image for the linear regression worker, and then deploying it on the Kubernetes cluster. The logs from the worker nodes can be monitored to ensure the training process is running smoothly.

## Notes
- Ensure Docker and Kubernetes are installed and configured on your system.
- Replace `refte0` with your Docker Hub username if necessary.

## Steps
1. Build the Docker image:
    ```sh
    docker build -t refte0/linear-regression-worker:latest .
    ```
2. Push the Docker image to Docker Hub:
    ```sh
    docker push refte0/linear-regression-worker:latest
    ```
3. Deploy the worker on the Kubernetes cluster:
    ```sh
    kubectl apply -f deployment.yaml
    ```

4. Monitor the logs from the worker nodes:
    ```sh
    kubectl logs -f linear-regression-worker-666cc6d54-z4jxj
    kubectl logs -f linear-regression-worker-5699bd44d6-8zrcj
    ```