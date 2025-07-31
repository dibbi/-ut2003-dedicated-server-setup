# ❓ UT2003 Dedicated Server (Linux) – Häufige Fragen (FAQ)

Hier findest du Antworten auf häufige Fragen zur Einrichtung und Nutzung des Unreal Tournament 2003 Dedicated Servers unter Linux.

---

### 🔸 Mein Server startet nicht – was kann ich tun?

- Stelle sicher, dass `ucc-bin` im selben Verzeichnis liegt wie das Startskript.
- Prüfe mit `chmod +x ucc-bin`, ob die Datei ausführbar ist.
- Starte das Skript von dort, wo `ucc-bin` liegt, oder passe den Pfad im Skript an.

---

### 🔸 Das Startskript sagt "Datei nicht gefunden"

- Wahrscheinlich ist `ucc-bin` nicht im gleichen Verzeichnis wie erwartet.
- Öffne `scripts/start-ut2003.sh` und passe ggf. den Pfad zu `ucc-bin` an:



```
/voller/pfad/zu/ucc-bin server …
```

---

### 🔸 Wie ändere ich die Map-Rotation?

- Öffne die Datei `UT2003.ini` (bzw. die Beispiel-Datei `UT2003.example.ini`).
- Gehe zum Abschnitt `[XInterface.MapListDeathMatch]`.
- Füge oder ändere die Einträge dort, z. B.:

  - `Maps=DM-Antalus`
  - `Maps=DM-Compressed`

---

### 🔸 Wie kann ich prüfen, ob mein Server erreichbar ist?

- Starte den Server und prüfe, ob Port 7777 (UDP) offen ist:


```

sudo ufw allow 7777/udp

```

---


- Verwende Tools wie `netstat`, `ss` oder `nmap` oder teste mit einem zweiten UT2003-Client.

---

### 🔸 Wie ändere ich den Servernamen?

- Öffne `UT2003.ini`, Abschnitt `[Engine.GameReplicationInfo]`.
- Passe `ServerName=Mein Servername` an.

---

### 🔸 Gibt es eine Möglichkeit zur Web-Administration?

- Ja. Aktiviere den Webserver in der INI:



```
[UWeb.WebServer]
bEnabled=True 
ListenPort=8080
```


- Danach kannst du per Browser (z. B. http://127.0.0.1:8080) zugreifen – evtl. nur im lokalen Netz.

---

### ℹ️ Noch Fragen?

Wenn du Probleme hast oder diese Datei erweitern möchtest, melde dich gerne per GitHub-Issue!

