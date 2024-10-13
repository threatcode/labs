### Generate Certificate Authority

```bash
cfssl gencert -initca ca-csr.json | cfssljson -bare ca
```

### Generate Certificate for the client

```bash
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=demo rest-khulnasoft-pvt-csr.json | cfssljson -bare rest-khulnasoft-pvt
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=demo grpc-khulnasoft-pvt-csr.json | cfssljson -bare grpc-khulnasoft-pvt
```
