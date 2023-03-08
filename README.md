## Download postgres and docker
```bash
    sudo pacman -S postgresql docker docker-compose
```  

## Setup docker
```bash
    sudo systemctl enable --now docker
    sudo docker compose up -d
```  

## Connect to database
```bash
    PGPASSWORD=password psql -h localhost -p 5432 -d postgres -U postgres
```
