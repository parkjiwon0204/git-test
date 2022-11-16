apiVersion: v1
kind: Pod
metadata:
        name: my-nginx-pod
spec:
        containers:
                - name: my-nginx-container
                  image: nginx:latest
                  ports:
                         - containerPort: 80
