-- +goose Up
-- +goose StatementBegin
CREATE TABLE users (
    id INT SERIAL PRIMARY KEY,
    login varchar NOT NULL,
    amount varchar NOT NULL,
    created_at timestamp not null default now()
);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE users;
-- +goose StatementEnd