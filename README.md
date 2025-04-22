
# Azure Quote & Application Platform

A scalable, event-driven, serverless architecture built on Microsoft Azure — designed to simulate a real-world quote and application system, similar to platforms used by financial firms.

---

## Business Overview

This project demonstrates how to architect, deploy, and manage a modular financial application using Azure. The platform allows customers to request quotes, submit applications, and receive notifications — all while maintaining performance, security, and cost-efficiency.

---

## High-Level Flow

1. A customer visits the website or mobile app.
2. Inputs are sent to Azure API Management.
3. Data flows through microservices:
   - Validates customer input.
   - Generates a quote.
   - Stores the application data.
   - Sends a notification.
4. All services are event-driven and loosely coupled.

---

## Architecture Components

| Component               | Role                                                                 |
|-------------------------|----------------------------------------------------------------------|
| Azure API Management    | Exposes public-facing secure API endpoints                           |
| Azure Function Apps     | Each Function = one microservice (quote, validation, app, notify)    |
| Azure Service Bus       | Secure, reliable messaging between microservices (event-driven)      |
| Azure Cosmos DB         | Durable, scalable data storage for quotes and applications           |
| Azure Front Door        | Optional: Add later for global load balancing & security             |
| Azure Key Vault         | Securely store API keys, DB strings, secrets                         |
| Azure Entra ID (AAD)    | Secure identity and access control (RBAC, Managed Identity)          |
| GitHub Actions          | CI/CD pipeline for Terraform deployment                              |
| Terraform               | Infrastructure-as-Code for repeatable, scalable provisioning         |

---

## Microservices (Azure Function Apps)

Each service is a separate Azure Function for modularity and independence:

- **quote-service** – Calculates quotes based on customer input.
- **application-service** – Stores the final application in Cosmos DB.
- **validation-service** – Cleans and verifies submitted data.
- **notification-service** – Sends confirmation messages via SendGrid or Twilio.

---

## Technology Stack

- **Language:** Python
- **Infrastructure:** Terraform
- **CI/CD:** GitHub Actions
- **Messaging:** Azure Service Bus
- **Architecture Style:** Event-driven, Serverless-first, loosely coupled
- **Security:** Entra ID (AAD), HTTPS, Key Vault, least privilege

---

## Folder Structure

```
azure-quote-platform/
├── infra/                    # Terraform code
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── backend.tf
│
├── functions/                # Microservices (Function Apps)
│   ├── quote-service/
│   ├── application-service/
│   ├── validation-service/
│   └── notification-service/
│
├── .github/
│   └── workflows/
│       └── terraform-deploy.yml
│
├── docs/                     # Flowcharts and architecture diagrams
│   └── architecture.png
│
└── README.md
```

---

## Getting Started

1. Clone this repo:

   ```bash
   git clone https://github.com/rrichley/azure-quote-platform.git
   ```

2. Set GitHub Actions secrets for Terraform:
   - `ARM_CLIENT_ID`
   - `ARM_CLIENT_SECRET`
   - `ARM_SUBSCRIPTION_ID`
   - `ARM_TENANT_ID`

3. Push changes to the `main` branch to trigger deployment.

---

## Goals of the Project

- Demonstrate a fully serverless architecture.
- Modular design using microservices.
- Secure, scalable, and cost-optimized.
- Real-world use case aligned with financial sector needs.
- Built to evolve into an AKS-based solution if needed.

---

## License

MIT License — use and adapt freely.
