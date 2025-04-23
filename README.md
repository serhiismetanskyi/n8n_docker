![n8n.io - Workflow Automation](https://user-images.githubusercontent.com/65276001/173571060-9f2f6d7b-bac0-43b6-bdb2-001da9694058.png)

# n8n Docker Setup

This repository contains a Docker setup for deploying [n8n](https://n8n.io/), an open-source workflow automation tool, with PostgreSQL as the database.

## Quick Start

To get started with running n8n using Docker, follow these steps:

### 1. Clone this repository

```bash
git clone https://github.com/serhiismetanskyi/n8n_docker.git
cd n8n_docker
```

### 2. Create a `.env` file

Create a `.env` file in the root of the project directory with your database connection details:

```env
DB_TYPE=postgresdb
DB_POSTGRESDB_HOST=<your_postgres_host>
DB_POSTGRESDB_PORT=5432
DB_POSTGRESDB_DATABASE=<your_database_name>
DB_POSTGRESDB_USER=<your_database_user>
DB_POSTGRESDB_PASSWORD=<your_database_password>
DB_POSTGRESDB_SSL_REJECT_UNAUTHORIZED=false

N8N_BASIC_AUTH_ACTIVE=true
N8N_BASIC_AUTH_USER=<your_username>
N8N_BASIC_AUTH_PASSWORD=<your_password>

N8N_PORT=5678

N8N_DIAGNOSTICS_ENABLED=false
N8N_PERSONALIZATION_ENABLED=false
N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
```

### 3. Build and Run Docker Container

Run the following commands to build and start the n8n service:

```bash
docker build -t n8n-docker .
docker run --env-file .env -p 5678:5678 n8n-docker
```

### 4. Access n8n

Once the container is running, access n8n in your browser at:

```
http://localhost:5678
```

Use the credentials defined in your `.env` file to log in.

### 5. Create a PostgreSQL Database on Render

Before deploying n8n to [Render.com](https://render.com/), you need to create a PostgreSQL database on Render:

1. Go to your Render dashboard.
2. Create a new **PostgreSQL Database** under the **Databases** section.
3. After the database is created, you’ll find the **Host**, **Port**, **Database Name**, **Username**, and **Password** in the database's settings.
4. Replace the placeholders in the `.env` file with the actual values provided by Render.

### 6. Deploy to Render

You can also deploy this setup on [Render.com](https://render.com/):

1. Create a new **Web Service** in Render and choose **Docker** as the environment.
2. In the **Environment** section of your service settings, upload the `.env` file with the database connection and other necessary variables.
3. Render will automatically build and deploy the Docker container.
4. Once deployed, Render will provide a URL for accessing n8n.

### 7. Access n8n on Render

Once the service is deployed on Render, access n8n in your browser at the provided URL:

```
https://<your-n8n-project>.onrender.com
```

## Technologies

- **n8n** - Open-source automation tool.
- **PostgreSQL** - Relational database for storing workflows.
- **Render.com** - Cloud platform for deploying and hosting applications.
