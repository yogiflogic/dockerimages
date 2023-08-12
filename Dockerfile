# Dengan nano editor
# Gunakan base image Ubuntu
FROM ubuntu:latest

# Install Docker di dalam image
RUN apt-get update && apt-get install -y \
    docker.io \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Buat symbolic link agar 'docker' bisa diakses di dalam container
RUN ln -s /usr/bin/docker.io /usr/local/bin/docker

# Perintah default yang akan dijalankan saat kontainer berjalan
CMD ["/bin/bash"]
