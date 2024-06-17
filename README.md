Script to build image
```
docker build -t finetune_env .
```
Script to run the image
```
docker run -p [port]:[port] --shm-size  [IMAGE_ID]
```
Script to expose jupyter server for running finetuning notebook
```
docker exec -it [CONTAINER_ID] /bin/bash
jupyter lab --ip 0.0.0.0 --port 5555 --allow-root
```