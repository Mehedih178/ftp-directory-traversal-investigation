# 🕵️‍♂️ FTP Directory Traversal Investigation — “Off Limits”

> A cybersecurity investigation project simulating an FTP directory traversal attack and traffic analysis using Wireshark.

---

## 📸 Project Overview

This project demonstrates how a **Directory Traversal attack** can be used to access unauthorized files hosted on an FTP server.  
I set up and attacked a mock FTP server for a fictional company, **Fairly Oddparents Corp**, then analyzed the captured `.pcapng` network traffic to determine which files were accessed illegally.

---

## 🧠 Scenario

The **Fairly Oddparents Corp.** claims its quarterly earnings are up by 900%, but the IRS suspects they are hiding the real data.  
I was tasked with investigating their server using legitimate penetration-testing techniques to uncover the truth.

The investigation involved:
- Hosting a simulated FTP server using Node.js (`hftp`)
- Performing a **Directory Traversal attack** via `attack.sh` and `attack.js`
- Analyzing captured network traffic (`server.pcapng`) in **Wireshark**
- Reporting all accessed files and findings

---

## ⚙️ Technologies & Tools
| Tool | Purpose |
|------|----------|
| **Bash** | Automated attack execution |
| **Node.js (hftp)** | Hosting vulnerable FTP server |
| **Wireshark** | Packet capture & forensic analysis |
| **Vim** | Script editing |
| **Linux Terminal** | Execution environment |

---

## 🧩 Project Workflow

```mermaid
flowchart TD
    A[Start FTP Server via start-server.js] --> B[Run attack.sh]
    B --> C[attack.js performs Directory Traversal]
    C --> D[Unauthorized files accessed]
    D --> E[Traffic captured in server.pcapng]
    E --> F[Analyze packets in Wireshark]
    F --> G[Identify compromised file paths]
    G --> H[Report findings]
