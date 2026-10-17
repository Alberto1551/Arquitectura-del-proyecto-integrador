#!/usr/bin/env bash
# Detiene (desasigna) la VM y el servidor de PostgreSQL para no consumir créditos.
# (Video 9 - Detener VM y Servidor de BD)

RG_BD="rg-utvt-integradora-dev-mxc-001"
SERVER="psql-utvt-integradora-dev-mxc-001-ajo"
RG_VM="vm-utvt-integradora-dev-mxc-001_grupo"
VM="vm-utvt-integradora-dev-mxc-001"

az vm deallocate -g "$RG_VM" -n "$VM"
az postgres flexible-server stop -g "$RG_BD" -n "$SERVER"

az vm show -g "$RG_VM" -n "$VM" -d --query powerState -o tsv
az postgres flexible-server show -g "$RG_BD" -n "$SERVER" --query state -o tsv
