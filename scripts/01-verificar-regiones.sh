#!/usr/bin/env bash
# Prueba en qué regiones permite desplegar la suscripción Azure for Students.
# Crea una VNet de prueba (gratis) en cada región y la elimina enseguida.
# Uso: bash 01-verificar-regiones.sh <grupo-de-recursos>

RG="${1:-rg-utvt-integradora-dev-mxc-001}"
REGIONES="mexicocentral westus westus2 westus3 centralus eastus eastus2 southcentralus northcentralus canadacentral canadaeast brazilsouth"

for r in $REGIONES; do
  if az network vnet create -g "$RG" -n "test-$r" -l "$r" --address-prefix 10.250.0.0/16 -o none 2>/dev/null; then
    echo "$r: PERMITIDA"
    az network vnet delete -g "$RG" -n "test-$r"
  else
    echo "$r: bloqueada"
  fi
done
