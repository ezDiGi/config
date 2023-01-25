#!/bin/bash
read -p "  ID nút (Node_ID):" node_id
  [ -z "${node_id}" ] && node_id=0
  echo "-------------------------------"
  echo -e "  Node_ID: ${node_id}"
  echo "-------------------------------"

      wget https://raw.githubusercontent.com/ezDiGi/config/main/config.yml -O /etc/XrayR/config.yml
      sed -i "s|NodeID:.*|NodeID: ${node_id}|" /etc/XrayR/aiko.yml