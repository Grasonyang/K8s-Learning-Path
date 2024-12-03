# k8s_multi_node_0

## Brief
嘗試以最基礎的容器化構建 Kubernetes 多 node 集群

## Status
失敗

## Details
這個腳本旨在使用最基本的容器化技術來構建一個 Kubernetes 多 node 集群。然而，由於某些技術限制或配置錯誤，這次嘗試未能成功。

## Notes
- 確保 Docker 和 Kubernetes 已正確安裝在所有節點上。
- 檢查網絡配置，確保所有節點之間的通信正常。
- 檢查 Kubernetes 配置文件，確保所有參數設置正確。

## Example
使用方法：
1. 啟動所有節點上的 Docker 服務。
2. 執行此腳本以初始化 Kubernetes 集群。
3. 檢查集群狀態以確保所有節點已成功加入。