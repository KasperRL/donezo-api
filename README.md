# Donezo API 🚀

![Java](https://img.shields.io/badge/Java-21-orange)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-Backend-brightgreen)
![PostgreSQL](https://img.shields.io/badge/Postgres-Database-blue)

**Donezo** is a small hobby project where I’m building a **project management SaaS backend** while learning backend engineering more deeply.

---

## Tech stack

* **Java 21**
* **Spring Boot**
* **Spring Security**
* **PostgreSQL**
* **Hibernate / JPA**
* **Flyway**
* **Docker**

---

## Local development

Start the database:

```bash
docker compose up -d
```

Run the application:

```bash
./gradlew bootRun
```

---

## Database

Schema changes are managed with **Flyway**.

```
src/main/resources/db/migration
```

Example:

```
V1__create_users.sql
```

---

## Goal

Build a real backend while learning things like:

* authentication & authorization
* database design
* caching
* observability
* JVM internals

Just a fun project to learn and experiment.

Donezo.
