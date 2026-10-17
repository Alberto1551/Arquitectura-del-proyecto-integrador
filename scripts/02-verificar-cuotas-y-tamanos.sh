#!/usr/bin/env bash
# Muestra las familias de VM con cuota > 0 y los tamaños pequeños disponibles en una región.
# Uso: bash 02-verificar-cuotas-y-tamanos.sh northcentralus

REGION="${1:-northcentralus}"

echo "===== Familias con cuota en $REGION"
az vm list-usage -l "$REGION" \
  --query "[?to_number(limit) > \`0\` && contains(localName,'Family')].{familia:localName, limite:limit, uso:currentValue}" \
  -o table

echo "===== Tamaños pequeños disponibles para la suscripción en $REGION"
az vm list-skus -l "$REGION" --resource-type virtualMachines \
  --query "[?contains(['Standard_B2als_v2','Standard_B2s_v2','Standard_B2ats_v2','Standard_B2s','Standard_B1s','Standard_D2as_v4','Standard_D2s_v4'], name) && length(restrictions[?type=='Location'])==\`0\`].name" \
  -o tsv
