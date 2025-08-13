FROM python:3.11-slim

# Crear directorio de trabajo
WORKDIR /app

# Copiar solo dependencias
COPY requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# El código se montará como volumen, no se copia aquí
CMD ["python", "src/main.py"]
