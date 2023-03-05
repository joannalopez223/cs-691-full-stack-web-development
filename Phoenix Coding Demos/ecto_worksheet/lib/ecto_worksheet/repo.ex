defmodule EctoWorksheet.Repo do
  use Ecto.Repo,
    otp_app: :ecto_worksheet,
    adapter: Ecto.Adapters.Postgres
end
