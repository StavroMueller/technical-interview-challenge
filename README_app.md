# How to run the app

## Getting it running
- in root
    - `docker compose up -d`
- run the migrations:
    - `cd backend/apps/database`
    - `mix ecto.migrate`
- iex -x mix in /backend
- run the seeds in iex:
    - `Backend.Database.Seed.execute()`
- run the server

