# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :snowday, SnowdayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gVtRsXqHrCisxxRdc1uh1f1/n0aMBo/BjxyfIs/tajLlGPBF6hR6Y3QbuVl5fWwB",
  render_errors: [view: SnowdayWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Snowday.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
