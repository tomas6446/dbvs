## Setup docker
```bash
    sudo pacman -S docker docker-compose
    systemctl enable --now docker
    docker compose up -d
```  

## Connect to database
```bash
    PGPASSWORD=password psql -h localhost -p 5432 -d postgres -U postgres
```
