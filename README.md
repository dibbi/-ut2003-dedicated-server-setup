# -ut2003-dedicated-server-setup
Skripte, Anleitungen und Links für Unreal Tournament 2003 Dedicated Server

---

## 📥 Wichtige Downloads

- **Windows Dedicated Server (v2225):**  
  https://archive.org/details/ut2003-dedicated-server-win-v2225

- **Linux Dedicated Server (v2225):**  
  https://archive.org/details/ut2003-dedicated-server-linux-v2225

- **Unreal Tournament 2003 Patch 2225 (Client und Server):**  
  https://archive.org/details/unrealtournament2003patch2225

- **ModDB – Community-Upload Dedicated Server (Windows ZIP):**  
  https://www.moddb.com/games/unreal-tournament-2003/downloads/dedicated-server-v2225

---

## ⚙️ Anleitungen und Konfiguration

- OldUnreal Wiki – allgemeiner UT-Serverguide (auch für UT2003 relevant):  
  https://www.oldunreal.com/wiki/index.php?title=UnrealTournament_Server_Guide

- PingPerfect – Konfigurationshilfe für UT2003.ini:  
  https://pingperfect.com/knowledgebase/459/Unreal-Tournament-2003-UT2003--Server-Configuration.html

- CC-Community (deutsches Forum – Tipps für Online & LAN):  
  https://www.cc-community.net/threads/unreal-tournament-2003-online-so-gehts.6456/

- UnrealAdmin Forum – Server-Tools und Administrationstipps:  
  http://www.unrealadmin.org/forums/showthread.php?t=5988

---

## ℹ️ Hinweise

- Die hier bereitgestellten Server-Versionen gelten als **Abandonware**.
- Die Nutzung erfolgt auf eigene Verantwortung.
- Das offizielle Spiel wird nicht mehr offiziell vertrieben, daher sind viele Quellen Archive oder Community-Uploads.
- Falls du öffentlich hosten willst, beachte, dass der Standard-Port meist **7777** ist.
- Beachte die jeweiligen Lizenz- und Nutzungsbedingungen der archivierten Dateien.

---

## 🔍 Weitere Ressourcen und Suche

- Archive.org: https://archive.org/
- ModDB: https://www.moddb.com/
- OldUnreal: https://www.oldunreal.com/
- UT-Files (ggf. über Wayback Machine erreichbar): https://ut-files.com/

---

*Dokumentation erstellt von [Dein Name oder GitHub-Username].*
*Bei Fragen oder Ergänzungen einfach ein Issue im Repository erstellen.*


---

# 🕹️ Unreal Tournament 2003 – Dedicated Server Setup (Linux)

> ⚠️ Dieses Repository bezieht sich ausschließlich auf die **Linux-Version** des Unreal Tournament 2003 Dedicated Servers.

Dieses Projekt bietet ein vollständiges, kommentiertes Setup für einen UT2003-Server unter Linux. Es enthält ein Startskript, eine Beispiel-Konfigurationsdatei und eine einfache Anleitung für Einrichtung und Betrieb. Ziel ist es, dir und unterstützenden Tools wie Claude den Einrichtungsprozess möglichst leicht zu machen.

---

## 📦 Voraussetzungen

- UT2003 Dedicated Server unter Linux (bereits entpackt bzw. installiert)
- Shellzugriff (z. B. Bash)
- Ausführungsrechte für `ucc-bin` sowie das Startskript
- Standardverzeichnisstruktur: `System/`, `Maps/`, `Textures/` usw.

---

## 🚀 Installation

1. Dieses Repository klonen oder herunterladen:

git clone https://github.com/dein-benutzername/ut2003-server cd ut2003-server



2. Lege dein UT2003-Serververzeichnis an oder navigiere hinein. Kopiere die Inhalte aus deiner originalen UT2003-Installation hinein (besonders den `System/`-Ordner mit `ucc-bin` und `.ini`-Dateien).

3. Stelle sicher, dass `ucc-bin` im selben Verzeichnis liegt, aus dem du später startest, und ausführbar ist:

chmod +x ucc-bin


---

## ▶️ Server starten

Das Skript findest du unter `scripts/start_server.sh`. Es startet einen einfachen Deathmatch-Server mit Standardmap.

### Start:

chmod +x scripts/start_server.sh ./scripts/start_server.sh


Das Skript ruft `ucc-bin server` mit einer Testmap und der Konfigurationsdatei `UT2003.ini` auf. Du kannst es jederzeit im Texteditor anpassen.

---

## ⚙️ Server-Konfiguration

Im Repository findest du eine komplette Beispielkonfiguration mit Kommentaren:

🔧 `config/UT2003.example.ini`

### Verwendung:

1. Kopiere die Datei in dein Serververzeichnis:

cp config/UT2003.example.ini UT2003.ini


2. Bearbeite die Datei:

nano UT2003.ini


3. Passe folgende Einträge an:
- `ServerName` → Anzeigename des Servers
- `AdminPassword` → fürs Server-Management im Spiel
- `GamePassword` → optional für privaten Serverzugang
- `MaxPlayers` → Spieleranzahl
- `Maps=` in der Mapliste → Rotation festlegen
- `Port=` und `WebAdmin-Port=` → Netzwerk/Firewall beachten

Die Datei enthält ausführliche Kommentare zur Orientierung. Sie sorgt dafür, dass Claude und andere Tools gezielt helfen können.

---

## 📁 Projektstruktur

├── README.md                     # Diese Anleitung ├── scripts/ │   └── start_server.sh           # Startskript für Linux ├── config/ │   └── UT2003.example.ini        # Beispiel-Konfigurationsdatei mit Kommentaren


---

## 🧠 Unterstützt durch Claude

Die klare Struktur dieses Repositories erlaubt unterstützenden KI-Modellen wie Claude:

- Hilfestellung beim Konfigurieren des Servers
- Erklärung einzelner Einstellungen aus der `.ini`-Datei
- Analyse beim Troubleshooting (Ports, Map-Rotation etc.)
- Anpassung des Startskripts bei Bedarf

---

## ✅ Noch geplant

- Optional: FAQ-Datei mit gängigen Problemen und Tipps
- Beispiele für weitere Spielmodi (CTF, Invasion, etc.)
- Beispielskripte für manuelles Stoppen oder Neustarten

---

## 💬 Mitmachen

Du kannst gerne Issues erstellen oder Pull Requests senden, z. B. für:

- zusätzliche Maps oder Mutatoren in der Rotation
- Verbesserungen am Startskript
- Erweiterung der Beispielkonfig

---

## 🔧 Vollständige Linux-Installationsanleitung

👉 Siehe [server-install.md](server-install.md) für eine detaillierte Schritt-für-Schritt-Anleitung zum Einrichten des UT2003 Dedicated Servers unter Linux.


---

## ❓ Hilfe & FAQ

Antworten auf häufige Fragen rund um den UT2003 Dedicated Server findest du in der separaten FAQ-Datei:

📄 [FAQ.md](FAQ.md)



**Have fun and frag on!**
