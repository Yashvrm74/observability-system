
# Observability System

This project demonstrates how to build an observability system using **Prometheus**, **Grafana**, **Loki**, and **Jaeger**. It provides an integrated monitoring system for performance metrics, centralized logs, and request tracing, containerized using **Docker**.

## Project Overview

In this project, I:

- Built a simple application with custom logs.
- Containerized the application using **Docker**.
- Configured **Prometheus** to scrape metrics from the application.
- Integrated **Loki** for centralized logging.
- Integrated **Jaeger** for tracing HTTP requests.
- Created a **Grafana dashboard** to visualize metrics, logs, and traces.

## Tools Used

- **Prometheus**: For collecting and scraping metrics from the app.
- **Grafana**: For visualizing metrics and logs on custom dashboards.
- **Loki**: For centralized logging.
- **Jaeger**: For tracing HTTP requests.
- **Docker**: For containerizing the application and setting up a multi-container environment.

## How to Run the Project

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/observability-system.git
   cd observability-system
   ```

2. Build and start the Docker containers using **Docker Compose**:
   ```bash
   docker-compose up
   ```

3. Access the following services:
   - **Prometheus**: `http://localhost:9090`
   - **Grafana**: `http://localhost:3000` (login: admin / admin)
   - **Jaeger**: `http://localhost:5775`
   - **Loki**: `http://localhost:3100`

4. Create a Grafana dashboard to visualize:
   - Metrics (request count from Prometheus)
   - Logs (from Loki)
   - Traces (from Jaeger)

## What’s Included

- **Docker Compose** setup for Prometheus, Grafana, Loki, and Jaeger.
- Configuration files for **Prometheus**, **Grafana**, and **Jaeger**.
- A basic Python app with custom logs and metrics exposed for monitoring.

## Future Improvements

- Add alerting in Prometheus for monitoring important events.
- Optimize Grafana dashboards with more detailed metrics and visualizations.

## License

This project is licensed under the MIT License.
