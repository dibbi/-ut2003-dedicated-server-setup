# 🧱 Unreal Tournament 2003 Dedicated Server – Schritt-für-Schritt-Anleitung (Linux)

Diese Anleitung hilft dir, den UT2003 Dedicated Server auf einem Linux-System korrekt einzurichten. Jeder Schritt ist kommentiert, damit auch Claude oder andere Helfer leicht darauf Bezug nehmen können.

---

## 1. 📂 Voraussetzungen

- Linux-Distribution mit Bash (z. B. Ubuntu, Debian, Arch)
- Einige Grundkenntnisse im Umgang mit der Konsole
- Die Original-Dateien aus Unreal Tournament 2003 (z. B. von DVD, GOG-Version oder Archiv)
- Das ausführbare Linux-Binary: `ucc-bin`

---

## 2. 📥 Repository klonen

Lade dieses Setup-Repository herunter:

git clone https://github.com/dibbi/ut2003-server cd ut2003-server


---

## 3. 📦 UT2003-Dateien ins Serververzeichnis kopieren

Kopiere aus deiner UT2003-Installation die benötigten Inhalte:

- `System/` (insbesondere `ucc-bin` und `.ini`-Dateien)
- `Maps/`
- `Textures/`, `StaticMeshes/`, `Sounds/` (falls verwendet)

Stelle sicher, dass sich die Dateien im selben Verzeichnis befinden oder passe Pfade im Startskript entsprechend an.

---

## 4. 🖥️ Startskript vorbereiten

Das Startskript liegt unter `scripts/start_server.sh`. Damit es aufgerufen werden kann, musst du es ausführbar machen:

chmod +x scripts/start_server.sh


---

## 5. ⚙️ Beispiel-Konfiguration übernehmen

Nutze die kommentierte Beispielkonfiguration als Grundlage:

cp config/UT2003.example.ini UT2003.ini


Öffne die Datei:

nano UT2003.ini


Ändere darin z. B.:

- `ServerName=Mein Server`
- `AdminPassword=MeinPasswort`
- Mapliste unter `[XInterface.MapListDeathMatch]`
- `MaxPlayers=`

💡 Die Datei enthält viele Kommentare zur besseren Orientierung.

---

## 6. ▶️ Server starten

Führe nun das Startskript aus:

./scripts/start-ut2003.sh



Wenn alles korrekt eingerichtet ist, startet der Server mit der angegebenen Map im Deathmatch-Modus.

---

## 7. 📡 Servererreichbarkeit prüfen

Standard-Ports:

- Spiel-UDP-Port: `7777`
- Query-Port: `7787`
- WebAdmin (optional): `8080`

Prüfe mit deinen Tools (z. B. `nmap`, `ss`, `netstat`) oder vom Spielclient aus, ob der Server erreichbar ist. Eventuell musst du in deiner Firewall die Ports freigeben:

sudo ufw allow 7777/udp


---

## 8. 🌐 WebAdmin aktivieren (optional)

Bearbeite in `UT2003.ini`:

UWeb.WebServer
bEnabled=True Listen
Port=8080


Greife dann per Browser auf `http://<Server-IP>:8080` zu (ggf. nur im LAN erreichbar).

---

## ✅ Fertig!

Dein UT2003-Server läuft jetzt unter Linux.

Wenn du automatische Neustarts, Logging oder neue Spielmodi einbauen willst, sieh dir die weiteren Dateien im Repository an (z. B. `FAQ.md`, `config/`, `scripts/`).

---

## 🔗 Weitere Hilfe

- [README.md](README.md): Übersicht über das Projekt
- [FAQ.md](FAQ.md): Häufige Probleme und Lösungen
- Beispielkonfiguration: [`config/UT2003.example.ini`](config/UT2003.example.ini)

---

> 📌 Diese Anleitung ist für Menschen und unterstützende Tools (wie Claude) geschrieben, damit das Server-Setup unter Linux so nahtlos wie möglich gelingt.

