import Config

config :family, Family.Repo,
  database: "family_repo",
  username: "jrowah",
  password: "postgres",
  hostname: "localhost"

# allow our application to run ecto mix commands from the commandline
config :family, ecto_repos: [Family.Repo]
