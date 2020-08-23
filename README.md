# docker-set-container-user-not-root



> docker build -t docker-set-container-user-not-root .

> docker run -d --rm -p 8080:8080 docker-set-container-user-not-root

> docker exec -it cac87206e253 /bin/bash

```
vasya@cac87206e253:/app$ ps aux
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
vasya        1  0.9  0.5 1448568 11156 ?       Ssl  16:01   0:06 ./main
vasya       35  1.6  0.1   4000  3232 pts/0    Ss   16:12   0:00 /bin/bash
vasya       41  0.0  0.1   7640  2676 pts/0    R+   16:12   0:00 ps aux
```

docker stop cac87206e253
