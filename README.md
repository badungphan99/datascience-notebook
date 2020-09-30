# Jupyter Notebook Docker

## Quick start

### Option 1: This command pull latest image from [dungpb/datascience-notebook](https://hub.docker.com/r/dungpb/datascience-notebook) Docker Hub 
`docker run -p <port>:8888 dungpb/datascience-notebook -v <path>:/home/jovyan/work`

- port: port number in host machine 
- path: location on host machine

Example:
`docker run -p 8888:8888 dungpb/datascience-notebook`

### Option 2: Using docker compose
- Create file with name docker-compose.yml

```
version: "3"
services:
    jupyter:
        image: dungpb/datascience-notebook
    container_name: jupyter-docker
    restart: unless-stopped
    ports:
        - 8888:8888
    volumes:
        - ./data:/home/jovyan/work
        - ./config:/home/jovyan/.jupyter
```
- 

`docker-compose up -d`