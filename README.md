# AI Life Log

개인 일지 서비스를 위한 초기 백엔드 실험입니다. 현재 PostgreSQL 테이블·트리거 정의와 FastAPI 기본 엔드포인트가 있으며, 일지 CRUD와 AI 기능은 아직 구현 중입니다.

## 구성

- `backend/`: FastAPI 애플리케이션과 비동기 DB 설정
- `sql/`: 일지 테이블, 예제 데이터, 조회·수정·삭제 SQL, 갱신 시각 트리거
- `compose.yml`: 로컬 PostgreSQL 실행 설정

## 로컬 실행

1. `.env.example`을 참고해 `.env`를 만듭니다.
2. `docker compose up -d`로 PostgreSQL을 실행합니다.
3. `backend/`에서 `uv sync` 후 `uv run uvicorn backend.main:app --reload`를 실행합니다.

현재 `/`와 `/config-test` 엔드포인트를 확인할 수 있습니다. `.env`는 저장소에 포함하지 않습니다.
