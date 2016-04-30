[program:{{SV_NAME | default ("service")}}]
command={{SV_CMD | default ("/bin/bash")}} {{SV_PARAMS | default("")}}
directory={{SV_DIR | default ("/tmp")}}
autostart=true
autorestart=true
startretries=3
stderr_logfile={{SV_LOG | default ("/var/log/supervisor-err.log")}}
stdout_logfile={{SV_LOG | default ("/var/log/supervisor-err.log")}}
user={{SV_USER | default ("nonpriv") }}
