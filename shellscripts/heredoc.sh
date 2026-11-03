#!/bin/bash

echo """
    This is the first line
    This is the second line
    This is the third line
""" > sample1.txt

# style 2
cat <<EOF > sample2.txt
    Style 2
    This is the second line
    This is the third line
EOF

# style 3
tee sample3.txt > /dev/null <<EOF
    Style 2
    This is the second line
    This is the third line
EOF

tee reverse-proxy.conf > /dev/null << EOF 
server {
    listen 80;
    server_name yourdomain.com ://yourdomain.com;

    location / {
        # Forward all incoming traffic on Port 80 to the backend server
        proxy_pass http://127.0.0.1:8080;

        # Recommended: Pass essential headers to the backend application
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}

EOF