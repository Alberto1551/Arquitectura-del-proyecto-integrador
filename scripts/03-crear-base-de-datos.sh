#!/usr/bin/env bash
# Crea la base de datos "integradora" en el servidor PostgreSQL flexible.
# (Video 8 - Creación de una nueva BD)

RG="rg-utvt-integradora-dev-mxc-001"
SERVER="psql-utvt-integradora-dev-mxc-001-ajo"

az postgres flexible-server db create \
  --resource-group "$RG" \
  --server-name "$SERVER" \
  -n integradora

az postgres flexible-server db list --resource-group "$RG" --server-name "$SERVER" -o table
