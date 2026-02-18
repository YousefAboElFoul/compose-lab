📦 Docker Compose Interactive Lesson








An interactive Bash script that teaches Docker Compose by building and running a real NGINX website step-by-step.

Instead of reading theory, users learn by doing.

🚀 What This Project Does

The script:

📁 Creates a real Docker Compose project

🌐 Runs an NGINX container

📦 Mounts volumes

🔁 Demonstrates live file updates

📊 Shows logs & container status

🧠 Explains each command before running it

🛑 Cleans up at the end

It pauses between steps so learners can follow along comfortably.

📸 Demo

After running the script, users can visit:

http://localhost:8080


They will see:

Hello from Docker Compose + NGINX 🚀

📂 Project Structure
.
├── compose-lesson.sh
├── README.md
└── (Generated during lesson)
    ├── docker-compose.yml
    └── html/
        └── index.html

🧠 Concepts Covered

This interactive lesson teaches:

docker-compose.yml structure

Services

Images (nginx:alpine)

Port mapping (8080:80)

Volumes (./html:/usr/share/nginx/html)

Running containers (up -d)

Viewing logs

Executing commands inside containers

Stopping containers (down)

Live updates via bind mounts

🔧 Requirements

Docker 20+

Docker Compose v2+

Bash (Linux, macOS, or WSL)

Verify installation:

docker --version
docker compose version

▶️ Quick Start
1️⃣ Clone repository
git clone https://github.com/YOUR_USERNAME/docker-compose-lesson.git
cd docker-compose-lesson

2️⃣ Make script executable
chmod +x compose-lesson.sh

3️⃣ Run the lesson
./compose-lesson.sh


Or specify a custom folder:

./compose-lesson.sh my-project

🛑 Cleanup

If something is still running:

docker compose down

🎯 Why This Exists

Most Docker tutorials:

Show YAML

Explain theory

Don’t let users experience the system

This project makes learning:

Interactive

Hands-on

Practical

Beginner-friendly

DevOps-focused

It’s ideal for:

Students

Junior DevOps engineers

Developers transitioning to containers

Bootcamps

Self-learners

🛣 Roadmap

Future improvements:

 --dry-run mode

 Beginner quiz mode

 Multi-service example (API + NGINX)

 Dockerfile build lesson

 Environment variables demo

 Compose networking demo

 Healthcheck demo

 HTTPS example

 CI/CD GitHub Actions integration

🤝 Contributing

Pull requests are welcome.

If you'd like to add:

New lesson modes

Improvements to clarity

Advanced examples

Feel free to open an issue or PR.

📜 License

MIT License

⭐ If This Helped You

If you found this useful:

⭐ Star the repo

🍴 Fork it

📢 Share it
