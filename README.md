# Report Service

A microservice report service built with Spring Boot 3.x, designed for generate reports using jasper report for any other 3rd party system.

## Overview

A report microservice, implement to help other systems build a reports.
## Features

- Integration with Jasper report.
- Database audit.
- Health Monitoring
- active service profiles for deployment.
- Metrics Collection
- High Availability Configuration
- Containerization configuration ready.
- Orchestration ready.

## Technical Stack

- **Parent Project**: Arb Parent 0.0.1-SNAPSHOT
- **Dependency Manager**: Maven 3.5.1
- **Framework**: Spring Boot 3.4.5
- **Language**: Java 21
- **report**: Jasper report 6.21.0
- **Container**: Docker
- **Orchestration**: Kubernetes
- **Chart**: Helm
- **Deployment Platform**: OpenShift
- **Monitoring**: Spring Actuator, Prometheus, Grafana
- **Logging**: EFK Stack (Elasticsearch, Fluentd, Kibana)

## Architecture

### Components

1. **Report Service**
   - Generate report
   - Exposes REST APIs


2. **Depend on**
   - ARB Bom
   - ARB Parent
   - Common-lib
   - Common-soap
   

3. **Infrastructure**
   - OpenShift Container Platform
   - High Availability setup
   - Load balancing
   - Auto-scaling


### Generate document
- `POST /api/v1/document` - Generate Report code

### Health & Monitoring
- `GET /api/v1/actuator/health` - Service health check
- `GET /api/v1/actuator/metrics` - Service metrics
- `GET /api/v1/actuator/prometheus` - Prometheus metrics
- `GET /api/v1/actuator/health/liveness` — Liveness probe endpoint
- `GET /api/v1/actuator/health/readiness` — Readiness probe endpoint

# Report Service Port
Expose port=8085

### Profiles
- `dev` - Development environment 