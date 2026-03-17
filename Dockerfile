FROM python:3.12-alpine
WORKDIR /workspace
COPY backend/requirements.txt ../requirements.txt
RUN pip install -r ../requirements.txt