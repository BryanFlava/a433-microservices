#!/bin/bash

# Langkah 1: Mem-build Docker Image
docker build -t item-app:v1 .  # Membuat Docker image dengan tag 'item-app:v1' dari Dockerfile

# Langkah 2: Melihat Daftar Docker Images yang Sudah Ada
docker images  # Menampilkan daftar Docker images yang sudah ada

# Langkah 3: Mengirim Docker Images ke Docker Hub
# Login ke Docker Hub menggunakan kredensial dari 'dockerpass.txt'
cat ../dockerpass.txt | docker login --username bryanflava --password-stdin
docker tag item-app:v1 bryanflava/item-app:v1  # Memberi tag pada image yang dibuat sebelumnya
docker push bryanflava/item-app:v1  # Mengirimkan image ke Docker Hub dengan nama 'bryanflava/item-app:v1'
