# Python imajını kullanarak bir temel oluşturun
FROM python:3.9-slim

# Çalışma dizinini ayarla
WORKDIR /app

# Uygulamanın bağımlılıklarını yükle
COPY requirements.txt .

# Bağımlılıkları yükleyin
RUN pip install --no-cache-dir -r requirements.txt

# Uygulamayı çalışma dizinine kopyalayın
COPY . .

# Uygulamayı 8081 portunda çalıştır
EXPOSE 8081

# Flask uygulamasını başlatın
CMD ["python", "app.py"]
