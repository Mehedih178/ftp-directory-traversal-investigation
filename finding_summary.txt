Mehedi Hassan — Findings Summary
Project: Off Limits (FTP Directory Traversal Investigation)

---

🧠 Objective:
Investigate the Fairly Oddparents Corp’s FTP server to uncover files that were accessed through a Directory Traversal attack and verify the accuracy of the company’s reported earnings.

---

🔍 Discovered File Paths (Accessed Without Proper Permission):
1. /cosmo/reports_original.txt
2. /wanda/reports_original.txt
3. /timmy/reports_original.txt

Each of these files was accessed via directory traversal using attack.js through the vulnerable FTP service.

---

💡 Attack Summary:
- Started vulnerable FTP server using `start-server.js`
- Launched attack through `attack.sh`, which invoked `attack.js`
- Attack exploited directory traversal sequences (`../`) to access hidden report files outside the public folder

---

📊 Comparison of Reported vs Real Earnings:
- **Public File:** `general/reports.txt` → Claimed “Earnings are up 900% this quarter”
- **Hidden Files:** `/cosmo/reports_original.txt`, `/wanda/reports_original.txt`, `/timmy/reports_original.txt` → Revealed **earnings actually decreased by ~90%**

✅ **Conclusion:** The public report was falsified; the true company earnings were significantly lower.

---

🧰 Tools Used:
- Bash scripting (`attack.sh`)
- Node.js (`attack.js`, `start-server.js`)
- Wireshark (`server.pcapng` traffic analysis)
- Linux terminal utilities (`nohup`, `chmod`, `grep`, `awk`)

---

📣 Credits:
Project performed and documented by **Mehedi Hassan**
Email: mehedih0928@gmail.com
