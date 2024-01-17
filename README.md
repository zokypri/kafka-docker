#  Microservice Architecture with Docker Compose

This project is designed to showcase a microservice architecture using Docker Compose, 
facilitating the deployment and orchestration of multiple containerized applications. 

# The microservices within the architecture include:

    1:  Zookeeper: Containerized instance of Wurstmeister's Zookeeper 
        Exposed on port 2181
    2:  Kafka: Containerized instance of Wurstmeister's Kafka 
        Exposed on port 9092
    3:  Police Service:
        Microservice responsible for fetching data from the Swedish Police API
        Microservice exposes callback endpoint from where the Police is sending alerts to inform the public
        The alerts are then published as Kafka events
        Exposes an API on port 8089.
        Still under development
    4:  Alert Service:
        Microservice consumes Kafka event published by police-service and store is in a MySQL DB
        Microservice wil expose a REST endpoint from where the Kafka events can be fetched
        Exposes an API on port 8080
        Still under development
    5:  News Service:
        Microservice that is the main service in the architecture that will gather different news types and return to caller
        Caller is to be a BFF from where a frontend app can fetch data to present to viewer
        As of right now only police-service is called from news-service
        Exposes an API on port 8087
        Still under development
    6:  MySQL Database:
        Containerized MySQL database serving as the persistent storage for the Alert Service.
        Exposes MySQL on port 3306

# Docker Compose Configuration (docker-compose.yml)
The docker-compose.yml file orchestrates the deployment of the entire microservices architecture 

# Running the project 
First Docker and docker compose need to be installed. 
Usually after installing Docker then docker composed is also installed

    1:  Clone the repositories kafka-docker, news-service, alert-service and police-service
    2:  Navigate to kafla-doocker repository
    3:  Run "docker compose up" in terminal to launch the entire microservices architecture

# Swagger links
Police Service:
http://localhost:8089/police-service/swagger-ui/index.html#/

News Service:
http://localhost:8087/news-service/swagger-ui/index.html#/

Alert Service:
under development

# Notes
The development is still under progress and several more services will appear in the architecture
Each service will also be improved with improved tests, improved logs, improved security and JWT access and improved error handling
        
        
