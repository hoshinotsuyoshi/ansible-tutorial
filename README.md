# Ansible Playbook Sample for me


## VM Setup

```sh
docker build -t hoshino .
docker run --rm -it -p 2222:22 hoshino
```

## Ansible ping

```sh
$ ansible all -i hosts -m ping
docker-host | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```

## 空のPlaybookを流す

```sh
$ ansible-playbook -i hosts site.yml
```
