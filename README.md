# Ansible Playbook Sample for me


## VM Setup

```sh
docker build -t hoshino .
docker run --rm -it -p 2222:22 hoshino
```

## Ansible ping

```
$ ansible all -i hosts -m ping
docker-host | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```
