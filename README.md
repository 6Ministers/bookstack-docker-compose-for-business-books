# Installing BookStack with docker-compose.

## Quick Installation

**Before starting the instance, direct the domain (subdomain) to the ip of the server where BookStack will be installed!**

## 1. BookStack Server Requirements
From and more
- 2 CPUs
- 2 RAM 
- 10 Gb 

Run for Ubuntu 22.04

``` bash
sudo apt-get purge needrestart
```

Install docker and docker-compose:

``` bash
curl -s https://raw.githubusercontent.com/6Ministers/bookstack-docker-compose-for-business-books/master/setup.sh | sudo bash -s
```

Download BookStack instance:

``` bash
curl -s https://raw.githubusercontent.com/6Ministers/bookstack-docker-compose-for-business-books/master/download.sh | sudo bash -s bookstack
```

If `curl` is not found, install it:

``` bash
$ sudo apt-get install curl
# or
$ sudo yum install curl
```

Go to the catalog

``` bash
cd bookstack
```


In the configuration file `Caddyfile`, set the following parameters. Specify your domain (subdomain):

``` bash
https://bookstack.your-domain.com:443 {
    reverse_proxy :6875
#	tls admin@example.org
	encode zstd gzip
	file_server	
}
```

In the configuration file `docker-compose`, set the following parameters. Specify your domain (subdomain):

``` bash
      - APP_URL=https://bookstack.your-domain.com
```

``` bash
    environment:
      - PUID=1000
      - PGID=1000
      - APP_URL=https://bookstack.your-domain.com
      - DB_HOST=bookstack_db
      - DB_PORT=3306
      - DB_USER=bookstack
      - DB_PASS=mydbpass
      - DB_DATABASE=bookstackapp
```

Run BookStack:
``` bash
docker-compose up -d
```
Then open `https://bookstack.your-domain.com:` to access BookStack


Login: `admin@admin.com`

Password:`password`


## BookStack container management

**Run BookStack**:

``` bash
docker-compose up -d
```

**Restart**:

``` bash
docker-compose restart
```

**Restart**:

``` bash
sudo docker-compose down && sudo docker-compose up -d
```

**Stop**:

``` bash
docker-compose down
```

## Documentation

