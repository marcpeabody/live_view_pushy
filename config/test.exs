use Mix.Config

# Configure your database
config :live_view_pushy, LiveViewPushy.Repo,
  username: "postgres",
  password: "postgres",
  database: "live_view_pushy_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :live_view_pushy, LiveViewPushyWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
