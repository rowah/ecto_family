defmodule Family.Repo do
  use Ecto.Repo,
    otp_app: :family,
    adapter: Ecto.Adapters.Postgres
end
