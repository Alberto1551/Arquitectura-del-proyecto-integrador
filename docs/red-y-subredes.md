# Red, subredes y nombres de recursos

Convención de nombres: `<tipo>-utvt-integradora-<componente>-<ambiente>-<región>-<número>`.

## Diseño original (laboratorio)

| Recurso | Nombre | CIDR |
|---|---|---|
| Red virtual | vnet-utvt-integradora-dev-mxc-001 | 10.0.0.0/16 |
| Integración de App Service | snet-utvt-integradora-app-dev-mxc-001 | 10.0.1.0/24 |
| Base de datos (reservada) | snet-utvt-integradora-db-dev-mxc-001 | 10.0.2.0/24 |
| Máquina virtual | snet-utvt-integradora-vm-dev-mxc-001 | 10.0.3.0/24 |
| Private Endpoints | snet-utvt-integradora-pe-dev-mxc-001 | 10.0.4.0/24 |
| Azure Bastion | AzureBastionSubnet | 10.0.5.0/24 |

## Recursos creados en mi suscripción

La región Mexico Central está bloqueada en mi suscripción Azure for Students, por eso todo se creó en **North Central US**. Los recursos con nombre global único llevan el sufijo `-ajo` / `ajo`.

| Recurso | Nombre real | Región |
|---|---|---|
| Grupo de recursos | rg-utvt-integradora-dev-mxc-001 | — |
| Red virtual (de la VM) | vnet-northcentralus-1 / snet-northcentralus-1 | North Central US |
| Máquina virtual | vm-utvt-integradora-dev-mxc-001 (Standard B2als v2, Windows Server 2025) | North Central US |
| PostgreSQL flexible server | psql-utvt-integradora-dev-mxc-001-ajo (Burstable B1ms, v18) | North Central US |
| Base de datos | integradora | — |
| Private Endpoint – PostgreSQL | pep-utvt-integradora-db-dev-mxc-001 | North Central US |
| NIC del endpoint – PostgreSQL | nic-utvt-integradora-pe-db-dev-mxc-001 | — |
| Cuenta de almacenamiento | stutvtintdevmxc001ajo (Blob, LRS) | North Central US |
| Private Endpoint – Blob | pep-utvt-integradora-blob-dev-mxc-001 | North Central US |
| NIC del endpoint – Blob | nic-utvt-integradora-pe-blob-dev-mxc-001 | — |
| Zona DNS privada – Blob | privatelink.blob.core.windows.net | Global |
| Plan de App Service | asp-utvt-integradora-dev-mxc-002 (Linux, B1) | North Central US |
| App Service | app-utvt-integradora--web-dev-mxc-001 (Node 24) | North Central US |
| Application Insights | app-utvt-integradora--web-dev-mxc-001 | North Central US |
