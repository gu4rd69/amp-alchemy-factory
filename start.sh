#!/bin/bash
echo "=== STARTE AUTOMATISCHEN STEAMCMD DOWNLOAD ==="
/AMP/steamcmd/steamcmd.sh +force_install_dir /AMP/alchemy-factory/4550060 +login anonymous +app_update 4550060 validate +quit

echo "=== DOWNLOAD FERTIG - RECHTE SETZEN ==="
chmod +x /AMP/alchemy-factory/4550060/AlchemyFactoryServer.exe

echo "=== STARTE WINE SERVER ==="
/usr/bin/xvfb-run -a wine /AMP/alchemy-factory/4550060/AlchemyFactoryServer.exe -port 7780 -log
