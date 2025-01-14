# Python 3.11 이미지를 기반으로 함
FROM python:3.11-slim AS builder

# 작업 디렉토리 설정
WORKDIR /app

# 시스템 패키지 업데이트 및 필요한 패키지 설치
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# 애플리케이션 코드 복사
COPY ./app ./app

CMD ["python", "-m", "app.main"]
