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

## 🚀 Installation und Server-Setup

### 1. Voraussetzungen & Vorbereitung

- **Betriebssystem**: Windows oder Linux (kompatibel mit den Server-Dateien)
- **Netzwerk**: Stelle sicher, dass die Ports 7777 (Game), 7787 (Query) und 28902 (Masterserver) offen sind, falls du öffentlich hosten willst.
- **Benötigte Dateien**: Siehe oben im Abschnitt „Wichtige Downloads“

### 2. Server-Dateien herunterladen und entpacken

- Lade dir die passende Server-Version herunter (Windows/Linux).
- Entpacke die Dateien in ein leeres Verzeichnis deiner Wahl.

### 3. Grundkonfiguration

- Öffne die Datei `UT2003.ini` im entpackten Server-Ordner mit einem Texteditor.
- Passe Einstellungen wie Servername, Passwort, Anzahl der Spieler usw. nach deinen Wünschen an.
- Beispiel:

Engine.GameReplicationInfo 
ServerName=Mein UT2003 Server 
AdminName=Admin 
AdminPassword=DeinSicheresPasswort


### 4. Server starten

**Unter Windows:**
- Führe `ucc.exe` über die Eingabeaufforderung oder Doppelklick aus, z. B.:

ucc.exe server DM-Antalus?
game=XGame.xDeathMatch ini=UT2003.ini


**Unter Linux:**
- Terminal öffnen, zum Server-Verzeichnis wechseln und starten:

./ucc-bin server DM-Antalus?
game=XGame.xDeathMatch ini=UT2003.ini


### 5. Portfreigabe & Firewall

- Stelle sicher, dass deine oben genannten Ports in der Firewall freigeschaltet sind.
- Bei Problemen mit der Verbindung im LAN/Internet: Router-Einstellungen kontrollieren.

### 6. Testlauf und Fehlerbehebung

- Versuche, dich über das UT2003-Spiel mit dem Server zu verbinden.
- Überprüfe bei Problemen die Log-Dateien (`server.log`) und kontrolliere Serverkonsole/Meldungen.
- Häufige Fehler und ihre Lösung findest du im Netz oder unter deinem FAQ-/Troubleshooting-Abschnitt.

---

**Tipp:**  
Für ausführlichere Anleitung, Spezial-Setups (Mods, Maps, Autostart), siehe die empfohlenen Links oder erweitere diese Anleitung nach eigenen Erfahrungen!






