# Plan for infra


## Elixir backend
- Umbrella app with apps:
    - breeds
    - graphql
    - api
    - database

- database
    - one table/schema
        - breed
            - id (uuid)
            - label
                - human readable label for the breed
            - image_url
                - probably just the filename of the dog breed image

- graphql
    - queries
        - breeds
            - get a list of all breeds
        - breed(id)
            - get info for one dog breed
    - mutations
        - create_breed(name, maybe image)

### Asides
- storing images in local file system sounds annoying (mostly because I would have to do research), might want to store image in database as blob/bytea even though maybe this isn't realistic for a real app (aws would make more sense). Maybe actually localstack s3 would be easier?
- going to take longer than would expect because umbrella apps just take a bit of trial and error to wire up properly


## React frontend

- components
    - List
        - state is the list of breeds and their images
        - list is mapped through to create ListItem for each breed
    - ListItem
        - Shows name and button to select a breed (maybe thumbnail of image but that's extra)

- pages
    - Main/index/dashboard
        - shows List of breeds
    - /breed/{uuid}
        - shows info for a specific breed

- extra stuff
    - graphql helper to make queries with fetch
    - maybe tests, but probably not (take longer than testing the backend)

