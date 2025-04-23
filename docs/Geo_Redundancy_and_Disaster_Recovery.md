# Geo-Redundancy & Disaster Recovery

This document outlines the geo-redundant strategy and disaster recovery planning for the Azure Quote Platform.

## Geo-Redundancy Design
- Azure resources distributed across primary and secondary regions.
- Cosmos DB configured with multi-region writes.
- Function Apps backed by Premium plans for high availability.
- Storage accounts use GRS (Geo-Redundant Storage).

## Disaster Recovery Principles
- Recovery Time Objective (RTO): < 1 hour
- Recovery Point Objective (RPO): Near zero for critical data
- Azure Traffic Manager or Front Door used for failover
- Infrastructure redeployable via Terraform

## Backup Strategy
- Automated daily backups of Cosmos DB and configurations
- Secrets stored in Azure Key Vault with soft-delete + purge protection

## Testing and Validation
- DR drills performed quarterly in a test environment
- GitHub Actions pipeline supports redeployment with minimal effort
