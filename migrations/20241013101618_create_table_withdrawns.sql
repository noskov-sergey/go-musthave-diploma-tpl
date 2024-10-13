-- +goose Up
-- +goose StatementBegin
CREATE TABLE withdrawns (
    user_id INT NOT NULL,
    number integer NOT NULL,
    amount integer,
    created_at timestamp not null default now(),
    FOREIGN KEY (user_id)  REFERENCES users (id) ON DELETE CASCADE
);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE withdrawns;
-- +goose StatementEnd