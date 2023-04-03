#!/bin/bash
echo "=== Generate CA ==="
openssl req -x509 -newkey rsa:4096 -subj "/CN=$1" -keyout ca_key.pem -out ca_cert.pem -days 36500

echo "=== Generate CSR ==="
openssl req -newkey rsa:4096 -keyout $1.pem -out $1.csr

echo "=== SIGN ==="
openssl x509 -req -days 36500 -in $1.csr -CA $1.pem -CAkey ca_key.pem -CAcreateserial -out $1.pem