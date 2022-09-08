#!/bin/sh
# V2Ray new configuration
# Run V2ray
# Write V2Ray configuration
cat << EOF > /etc/v2ray/config.json
{
    "inbounds": [{
        "port": 8081,
        "protocol": "vmess",
        "settings": {
            "clients": [{
                "id": "4be74222-b782-4915-8a7a-1b0566aaf6e2",
                "alterId": 0
            }]
        },
        "streamSettings": {
            "network": "ws",
            "wsSettings": {
                "path": "/2089f30a-86e8-45ef-b7f4-82259d292c04"
            }
        }
    }],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF

#Run V2ray

/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
