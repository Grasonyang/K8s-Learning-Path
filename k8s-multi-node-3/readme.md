docker build -t refte0/linear-regression-worker:latest .
docker push refte0/linear-regression-worker:latest
kubectl logs -f linear-regression-worker-666cc6d54-z4jxj
kubectl logs -f linear-regression-worker-5699bd44d6-8zrcj
