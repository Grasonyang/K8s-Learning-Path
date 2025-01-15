# 使用kubectl create建立yaml

## Brief

## Status
進行中

## Details
使用kubectl create命令來建立Kubernetes的yaml文件。

## Notes
確保已經安裝並配置好kubectl工具。

## Steps
1. 編寫yaml文件。
2. 使用命令 `kubectl create deployment test4 --image=nginx --dry-run=client -o yaml > test4.yaml` 來建立資源。
3. 驗證資源是否成功建立。