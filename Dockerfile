# Python 3.11 이미지를 기반으로 함
FROM python:3.11-slim AS builder

# 작업 디렉토리 설정
WORKDIR /app

# 애플리케이션 코드 복사
COPY ./app ./app

CMD ["python", "-m", "app.main"]
