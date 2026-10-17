#!/usr/bin/env bash
# Vuelve a encender la VM y el servidor de PostgreSQL.

RG_BD="rg-utvt-integradora-dev-mxc-001"
SERVER="psql-utvt-integradora-dev-mxc-001-ajo"
RG_VM="vm-utvt-integradora-dev-mxc-001_grupo"
VM="vm-utvt-integradora-dev-mxc-001"

az postgres flexible-server start -g "$RG_BD" -n "$SERVER"
az vm start -g "$RG_VM" -n "$VM"
