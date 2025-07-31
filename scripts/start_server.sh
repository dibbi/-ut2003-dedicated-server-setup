#!/bin/bash
# --- Unreal Tournament 2003 Dedicated Server Startskript (Linux) ---
# Dieses Skript startet den UT2003-Server mit einer Beispielmap im Deathmatch-Modus.
# Stelle sicher, dass sich diese Datei im gleichen Verzeichnis befindet wie 'ucc-bin' oder passe den Pfad unten entsprechend an.

# Optional: Servereinstellungen (Dateien müssen entsprechend konfiguriert sein, z. B. UT2003.ini)

echo "Starte Unreal Tournament 2003 Dedicated Server ..."

./ucc-bin server DM-Antalus?game=XGame.xDeathMatch ini=UT2003.ini -nohomedir

echo "Server wurde beendet oder gestoppt."
