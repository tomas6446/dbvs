## Download postgres and docker
```bash
    sudo pacman -S postgres docker docker-compose
```  

## Setup docker
```bash
    systemctl enable --now docker
    docker compose up -d
```  

## Connect to database
```bash
    sudo -iu postgres
    PGPASSWORD=password psql -h localhost -p 5432 -d postgres -U postgres
```
