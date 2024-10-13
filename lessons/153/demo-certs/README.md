### Generate Certificate Authority

```bash
cfssl gencert -initca ca-csr.json | cfssljson -bare ca
```

### Generate Certificate for the client

```bash
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=demo caddy-khulnasoft-pvt-csr.json | cfssljson -bare caddy-khulnasoft-pvt
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=demo traefik-khulnasoft-pvt-csr.json | cfssljson -bare traefik-khulnasoft-pvt
```
