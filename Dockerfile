FROM python:3.11-slim
WORKDIR /workspace
COPY backend/requirements.txt ../requirements.txt
RUN pip install -r ../requirements.txt