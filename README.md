# docker-ssh-tunnel

```
docker run -d \
      --name remote-host \
      --restart=always \
      --network <your_network> \ 
      -v <your_ssh_dir>:/root/.ssh \
      -e PORTS=5672,27017:10.42.8.31:27017 \
      -e REMOTE_USER=root \
      -e REMOTE_HOST=<remote_ip> \
       dangdungcntt/docker-ssh-tunnel
```
