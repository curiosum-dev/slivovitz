defmodule Slivovitz.Repo do
  use Ecto.Repo,
    otp_app: :slivovitz,
    adapter: Ecto.Adapters.Postgres
end
