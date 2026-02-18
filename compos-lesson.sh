#!/usr/bin/env bash
set -euo pipefail

APP_DIR="${1:-compose-lesson}"
PORT="${PORT:-8080}"

say() {
  echo
  echo "🧠 $1"
}

cmd() {
  echo
  echo "▶ $*"
}

pause() {
  echo
  read -r -p "Press Enter to continue..." _
}

say "Docker Compose mini-lesson (NGINX website)"
say "We'll create a folder: '$APP_DIR' and run NGINX on http://localhost:$PORT"

pause

cmd "mkdir -p '$APP_DIR/html'"
mkdir -p "$APP_DIR/html"

say "Step 1: Create a simple website (index.html)"
cmd "cat > '$APP_DIR/html/index.html' <<'HTML' ... HTML"
cat > "$APP_DIR/html/index.html" <<'HTML'
<!doctype html>
<html>
  <head><meta charset="utf-8"><title>Compose Lesson</title></head>
  <body>
    <h1>Hello from Docker Compose + NGINX 🚀</h1>
    <p>If you can see this, volumes + ports are working.</p>
  </body>
</html>
HTML

pause

say "Step 2: Create docker-compose.yml"
say "Key ideas:"
say " - services: containers you run"
say " - image: what to run (nginx)"
say " - ports: host:container (localhost:$PORT -> container:80)"
say " - volumes: mount local folder into container (live edits!)"

cmd "cat > '$APP_DIR/docker-compose.yml' <<'YAML' ... YAML"
cat > "$APP_DIR/docker-compose.yml" <<YAML
version: '3.8'

services:
  web:
    image: nginx:alpine
    ports:
      - '${PORT}:80'
    volumes:
      - ./html:/usr/share/nginx/html:ro
    restart: unless-stopped
YAML

pause

say "Step 3: Run it"
say "docker compose up -d starts services in the background"
cmd "cd '$APP_DIR' && docker compose up -d"
(
  cd "$APP_DIR"
  docker compose up -d
)

say "Open: http://localhost:$PORT"
pause

say "Step 4: See running containers (compose services)"
cmd "cd '$APP_DIR' && docker compose ps"
(
  cd "$APP_DIR"
  docker compose ps
)

pause

say "Step 5: View logs"
cmd "cd '$APP_DIR' && docker compose logs --tail=50"
(
  cd "$APP_DIR"
  docker compose logs --tail=50
)

pause

say "Step 6: Exec into the container (run a command inside)"
cmd "cd '$APP_DIR' && docker compose exec web nginx -v"
(
  cd "$APP_DIR"
  docker compose exec web nginx -v
)

pause

say "Step 7: Demonstrate volume hot-reload"
say "We will edit index.html locally; NGINX will serve the updated file instantly."
cmd "sed -i.bak 's/Hello from Docker Compose/Updated from the host volume/' '$APP_DIR/html/index.html'"
sed -i.bak 's/Hello from Docker Compose/Updated from the host volume/' "$APP_DIR/html/index.html" || true

say "Refresh http://localhost:$PORT to see the change."
pause

say "Step 8: Stop and remove containers (but keep your files)"
cmd "cd '$APP_DIR' && docker compose down"
(
  cd "$APP_DIR"
  docker compose down
)

say "✅ Lesson complete."
say "Your project files are still in '$APP_DIR'."
