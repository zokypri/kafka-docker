#  Microservice Architecture with Docker Compose

This project is designed to showcase a microservice architecture using Docker Compose, 
facilitating the deployment and orchestration of multiple containerized applications. 


## Microservices Overview:

1. **Zookeeper:**
    - Containerized instance of Wurstmeister's Zookeeper.
    - Exposed on port 2181.

2. **Kafka:**
    - Containerized instance of Wurstmeister's Kafka.
    - Exposed on port 9092.

3. **Police Service:**
    - Microservice fetching data from the Swedish Police API.
    - Exposes a callback endpoint for receiving alerts, publishing them as Kafka events.
    - API exposed on port 8089.
    - Still under development.

4. **Alert Service:**
    - Microservice consuming Kafka events published by the police-service, storing them in a MySQL DB.
    - Exposes a REST endpoint for fetching Kafka events.
    - API exposed on port 8080.
    - Still under development.

5. **News Service:**
    - Main microservice gathering different news types, currently calling only police-service.
    - Exposes an API on port 8087.
    - Still under development.

6. **MySQL Database:**
    - Containerized MySQL database serving as persistent storage for the Alert Service.
    - Exposes MySQL on port 3306.

# Docker Compose Configuration (docker-compose.yml)
The docker-compose.yml file orchestrates the deployment of the entire microservices architecture 

# Running the project 
First Docker and docker compose need to be installed. 
Usually after installing Docker then docker composed is also installed

    1:  Clone the repositories kafka-docker, news-service, alert-service and police-service
    2:  Navigate to kafla-doocker repository
    3:  Execute "docker compose build" to build the entire project
    4:  Execute "docker compose up" in terminal to launch the entire microservices architecture

# Swagger links
Police Service:
http://localhost:8089/police-service/swagger-ui/index.html#/

News Service:
http://localhost:8087/news-service/swagger-ui/index.html#/

Alert Service:
http://localhost:8070/alert-service/swagger-ui/index.html#

# Notes
The development is still under progress and several more services will appear in the architecture
Each service will also be improved with improved tests, improved logs, improved security and JWT access and improved error handling
        
        
