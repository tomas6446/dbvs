## Download postgres and docker
```bash
    sudo pacman -S postgresql docker docker-compose
```  

## Setup docker
```bash
    systemctl enable --now docker
    docker compose up -d
```  

## Connect to database
```bash
    PGPASSWORD=password psql -h localhost -p 5432 -d postgres -U postgres
```

## Run inserts and table creation
```
    psql -d myDataBase -a -f myInsertFile
```