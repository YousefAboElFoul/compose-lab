# 🚀 compose-lab

[![Docker](https://img.shields.io/badge/Docker-24.x-blue?logo=docker)](https://www.docker.com/)
[![Compose](https://img.shields.io/badge/Docker_Compose-v2-blue?logo=docker)](https://docs.docker.com/compose/)
[![Bash](https://img.shields.io/badge/Bash-5.x-black?logo=gnubash)](https://www.gnu.org/software/bash/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

Interactive Bash script that teaches Docker Compose by building and running a real NGINX project step-by-step.

---

## 📦 What Is This?

`compose-lab` is a hands-on learning tool.

Instead of reading theory, you learn Docker Compose by:

- Creating a real project
- Running an NGINX container
- Mapping ports
- Mounting volumes
- Viewing logs
- Executing commands inside containers
- Cleaning everything up

It pauses between steps and explains what’s happening.

---

## 🧠 Concepts Covered

This lab teaches:

- Structure of `docker-compose.yml`
- Services
- Images (`nginx:alpine`)
- Port mapping (`8080:80`)
- Volumes (bind mounts)
- `docker compose up -d`
- `docker compose ps`
- `docker compose logs`
- `docker compose exec`
- `docker compose down`
- Live file updates via volumes

---

## 📂 Project Structure

```
.
├── compose-lesson.sh
├── README.md
└── (Generated during lesson)
    ├── docker-compose.yml
    └── html/
        └── index.html
```

---

## 🔧 Requirements

- Docker 20+
- Docker Compose v2+
- Bash (Linux, macOS, or WSL)

Verify installation:

```bash
docker --version
docker compose version
```

---

## ▶️ Quick Start

### 1️⃣ Clone the repository

```bash
git clone https://github.com/YousefAboElFoul/compose-lab.git
cd compose-lab
```

### 2️⃣ Make script executable

```bash
chmod +x compose-lesson.sh
```

### 3️⃣ Run the lab

```bash
./compose-lesson.sh
```

Or specify a custom project directory:

```bash
./compose-lesson.sh my-project
```

---

## 🌍 Access the Website

After running the script, open:

```
http://localhost:8080
```

You should see:

```
Hello from Docker Compose + NGINX 🚀
```

---

## 🛑 Stop & Cleanup

If needed:

```bash
docker compose down
```

---

## 🎯 Why This Exists

Most Docker tutorials are passive.

`compose-lab` is:

- Practical
- Interactive
- Beginner-friendly
- DevOps-focused
- Real-world oriented

It helps you understand **how and why Docker Compose works**, not just how to type commands.

---

## 🛣 Roadmap

Planned improvements:

- [ ] Dry-run mode
- [ ] Multi-service example (API + NGINX)
- [ ] Dockerfile build lesson
- [ ] Environment variables demo
- [ ] Networking demo
- [ ] Healthcheck example
- [ ] HTTPS example
- [ ] CI/CD integration demo

---

## 🤝 Contributing

Pull requests are welcome.

If you'd like to improve explanations or add advanced examples, feel free to open an issue or PR.

---

## 📜 License

MIT License

---

## ⭐ Support

If this project helped you:

- ⭐ Star the repo
- 🍴 Fork it
- 📢 Share it

Happy learning 🚀
