import os
import boto3
from dotenv import load_dotenv

# Cargar variables de entorno
load_dotenv()

# Inicializar cliente S3 como ejemplo
s3 = boto3.client(
    "s3",
    aws_access_key_id=os.getenv("AWS_ACCESS_KEY_ID"),
    aws_secret_access_key=os.getenv("AWS_SECRET_ACCESS_KEY"),
    region_name=os.getenv("AWS_DEFAULT_REGION")
)

def list_buckets():
    response = s3.list_buckets()
    for bucket in response.get("Buckets", []):
        print(f" - {bucket['Name']}")

if __name__ == "__main__":
    list_buckets()
