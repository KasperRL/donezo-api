CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE users (
                       id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),

                       email         VARCHAR(320) NOT NULL,
                       password_hash TEXT NOT NULL,

                       display_name  VARCHAR(100),
                       given_name    VARCHAR(100),
                       middle_name   VARCHAR(100),
                       family_name   VARCHAR(100),

                       enabled       BOOLEAN NOT NULL DEFAULT TRUE,

                       created_at    TIMESTAMPTZ NOT NULL DEFAULT now(),
                       updated_at    TIMESTAMPTZ NOT NULL DEFAULT now(),
                       last_login_at TIMESTAMPTZ
);

CREATE UNIQUE INDEX ux_users_email_lower ON users (LOWER(email));
