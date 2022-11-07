# How to run the app
## Installing software 
You will need `docker` and `docker_compose`

You will need elixir, erlang, and nodejs. The easiest thing to do is use [asdf](https://asdf-vm.com/guide/getting-started.html). If you do not want to use this, you can see all the versions of the software you will need in the `.tool-versions` file.

## Getting it running
- in root
    - `docker compose up -d`
- run the migrations:
    - `cd backend/apps/database`
    - `mix ecto.migrate`
    - `MIX_ENV=test mix ecto.migrate` (to run tests)
- run the seeds in iex:
    - `iex -x mix` in root
    - `Backend.Database.Seed.execute()`
- run the server
    - `cd backend/apps/api`
    - `mix phx.server`
- start the frontend
    - `cd frontend`
    - `npm install`
    - `npm run start`
- go to `localhost:3000` and admire some dogs!
