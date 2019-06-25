# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_pushy,
  ecto_repos: [LiveViewPushy.Repo]

# Configures the endpoint
config :live_view_pushy, LiveViewPushyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RikUJ6hmdWEOOKiCCBgypBItNYQGFvWDqrLkxtvHG35umA9castCelDmZaYV7/WX",
  render_errors: [view: LiveViewPushyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveViewPushy.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "B4AeL14xEpTyPIyR92tiptEtes317c2XK2jmXWiNw4s1KKkWi2YB9qkmO4VPqG6y"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
