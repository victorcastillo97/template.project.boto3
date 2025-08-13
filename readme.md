# 🚀 Boto3 Starter Project

Proyecto base para trabajar con **AWS boto3** en Python, usando `.env` para credenciales y con soporte opcional para Docker.

---

## 📦 Requisitos previos

- Python 3.10+ (solo si lo usarás sin Docker)
- [pip](https://pip.pypa.io/en/stable/) (solo si lo usarás sin Docker)
- Cuenta de AWS con credenciales válidas
- (Opcional) Docker instalado y Makefile

---

## ⚙️ Configuración inicial

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/victorcastillo97/template.project.boto3.git
   cd template.project.boto3
   ```

2. Crear el archivo `.env` a partir de la plantilla:
   ```bash
   cp .env.example .env
   ```
   Luego, edita `.env` y coloca tus credenciales de AWS:
   ```env
   AWS_ACCESS_KEY_ID=tu_access_key
   AWS_SECRET_ACCESS_KEY=tu_secret_key
   AWS_DEFAULT_REGION=us-east-1
   ```

---

## ▶️ Ejecutar **sin Docker** (modo local)

1. Crear entorno virtual e instalar dependencias:
   ```bash
   python -m venv .venv
   source .venv/bin/activate  # En Windows: .venv\Scripts\activate
   pip install -r requirements.txt
   ```

2. Ejecutar:
   ```bash
   python src/main.py
   ```

---

## 🐳 Ejecutar **con Docker** usando volumen (modo desarrollo recomendado)

> Así no necesitas reconstruir la imagen cada vez que cambies el código.

1. Construir la imagen (solo la primera vez o cuando cambien dependencias):
```bash
docker build -t boto3-starter -f docker/Dockerfile .
```

2. Ejecutar el contenedor montando la carpeta `src`:
```bash
docker run --rm   --env-file .env   -v $(pwd)/src:/app/src   boto3-starter
```

- `-v $(pwd)/src:/app/src` monta tu carpeta local `src` dentro del contenedor.
- Si cambias el código en tu máquina, el contenedor lo verá inmediatamente.

---

## ⚡ Uso opcional con Makefile

Este proyecto incluye un `Makefile` para facilitar la ejecución rápida.

Ejecutar con Docker:
```bash
make run
```

Construir imagen:
```bash
make build
```

Limpiar contenedores/imágenes:
```bash
make clean
```

---

## 📂 Estructura del proyecto

```
boto3-starter/
├── docker/           # Dockerfile para ejecución opcional
├── src/              # Código fuente
├── .env.example      # Plantilla de variables de entorno
├── requirements.txt  # Dependencias
├── Makefile          # Comandos rápidos opcionales
└── README.md         # Guía de uso
```

---

## ✨ Notas

- Las credenciales **nunca** deben subirse al repositorio.
- `.env` está en `.gitignore` para evitar filtraciones.
- Puedes reemplazar el contenido de `src/main.py` con tu lógica AWS.
