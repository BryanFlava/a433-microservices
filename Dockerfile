# Mengambil image dari node:14
FROM node:14-alpine

# Mengatur direktori kerja ke /app
WORKDIR /app

# Menyalin semua file ke direktori kerja (/app)
COPY . /app

# Menetapkan variabel lingkungan NODE_ENV sebagai production dan DB_HOST sebagai item-db
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependensi dengan mode produksi dan menjalankan perintah build
RUN npm install --production --unsafe-perm && npm run build

# Membuka port 8080
EXPOSE 8080

# Perintah yang dijalankan saat container dimulai
CMD [ "npm", "start" ]

