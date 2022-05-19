# Data Lake
Repository containing the data lake creation and configuration script to be used in the project.

### Requirements
[Docker](https://www.docker.com/) >= 20.10.16

### Install
First, inside `config` directory, create an `.env` file using the `.env.example` file as a base. Edit the new file with the username and password for MinIO data lake. These will be the root user's login credentials. Next, run the setup file with command below. Make sure you are running from project root directory to avoid unreachable references. MinIO data lake service will be start automatically.
```
./setup.sh
```
The above script will create inside `datalake` directory all pre-defined buckets.

### MinIO data lake GUI
To get access to MinIO data lake GUI, access `localhost:9001` from your web browser. MinIO data lake login page will be shown. Enter credentials defined in the `.env` file.

### Starting/stopping MinIO data lake service
To start MinIO data lake service:
```
docker start minio-cor
```
To stop MinIO data lake service:
```
docker stop minio-cor
```
