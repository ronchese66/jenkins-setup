# Jenkins Setup with Docker and NGINX Reverse Proxy

Simple Jenkins setup using Docker and NGINX reverse proxy.

## Structure

- `Dockerfile` – custom Jenkins image with Docker CLI and required plugins
- `docker-compose.yml` – defines Jenkins, Docker-in-Docker and NGINX reverse proxy setup 
- `nginx.conf` – proxies HTTP traffic on port 80 to Jenkins port 8080

## Usage

```bash
git clone https://github.com/ronchese66/jenkins-setup.git
cd jenkins-setup
docker compose up -d
docker compose down
