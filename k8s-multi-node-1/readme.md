# 使用 Kind 構建多節點 K8s 集群

## 簡介
本文檔提供了如何使用 Kind（Kubernetes IN Docker）構建多節點 Kubernetes 集群的說明。

## 狀態
進行中

## 詳細信息
Kind 是一種使用 Docker 容器節點運行本地 Kubernetes 集群的工具。它主要用於測試 Kubernetes 本身，但也可以用於本地開發或 CI。

## 注意事項
- 確保您的機器上已安裝並運行 Docker。
- Kind 需要 Kubernetes 配置文件來設置集群。

## 步驟
1. **安裝 Kind**：按照 [Kind 安裝方法](https://chatgpt.com/share/676a9478-9d7c-8011-8af4-90976aba2e1a)中的安裝說明進行安裝。
2. **創建配置文件**：為多節點集群創建 YAML 配置文件。
    ```yaml
    kind: Cluster
    apiVersion: kind.x-k8s.io/v1alpha4
    nodes:
      - role: control-plane
      - role: worker
      - role: worker
    ```
3. **創建集群**：使用配置文件創建集群。
    ```sh
    kind create cluster --config=kind-config.yaml
    ```
4. **驗證集群**：確保集群已啟動並運行。
    ```sh
    kubectl get nodes
    ```
5. **部署應用程序**：根據需要將您的應用程序部署到集群中。
