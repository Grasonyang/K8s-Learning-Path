import numpy as np
import os
import time
import hashlib

def generate_data(size):
    np.random.seed(42)
    x = np.random.rand(size) * 10
    y = 2 * x + 1 + np.random.randn(size)
    return x, y

def train(x, y, learning_rate=0.01, epochs=1000):
  
    m = np.random.rand()
    b = np.random.rand()

    for epoch in range(epochs):
        y_predicted = m * x + b
        
        dm = -2 * np.mean(x * (y - y_predicted))
        db = -2 * np.mean(y - y_predicted)

        m = m - learning_rate * dm
        b = b - learning_rate * db
    return m, b


if __name__ == '__main__':
    pod_name = os.environ.get('WORKER_ID', '')
    total_workers = int(os.environ.get('TOTAL_WORKERS', 4))  # 每个 worker 运行两个 pod，所以 total worker = 2*2 = 4

    # 使用 hash 值作为 worker ID
    hashed_name = hashlib.md5(pod_name.encode()).hexdigest()
    worker_id = int(hashed_name[-4:], 16) % total_workers

    
    size = 1000
    start_index = (worker_id * size) // total_workers
    end_index = ((worker_id + 1) * size) // total_workers
    
    x_all, y_all = generate_data(size)
    x_subset = x_all[start_index:end_index]
    y_subset = y_all[start_index:end_index]

    start = time.time()
    m, b = train(x_subset, y_subset)
    end = time.time()
    print(f"Worker ID: {worker_id}, Trained in: {end-start}, m: {m}, b: {b}")