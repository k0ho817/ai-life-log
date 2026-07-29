CREATE TABLE life_logs(
    -- (칼람명) (자료형) (옵션)
    -- GENERATED ALWAYS AS IDENTITY : 1식 증가해서 적용
    -- PRIMARY KEY : 기본키로 설정
    -- NOT NULL : 널 허용 X
    -- CHECK () : 제약조건
    -- DEFAULT : 기본값 설정
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    log_date DATE NOT NULL,
    title VARCHAR(100),
    content TEXT NOT NULL CHECK (length(trim(content)) > 0),
    mood SMALLINT NOT NULL CHECK (mood BETWEEN 0 AND 4),
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);