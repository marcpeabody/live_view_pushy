defmodule LiveViewPushy.Repo do
  use Ecto.Repo,
    otp_app: :live_view_pushy,
    adapter: Ecto.Adapters.Postgres
end
