import Config

config :family, Family.Repo,
  database: "family_repo",
  username: "jrowah",
  password: "postgres",
  hostname: "localhost"

config :family, ecto_repos: [Family.Repo]
