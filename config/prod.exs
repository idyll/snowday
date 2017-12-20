use Mix.Config
config :snowday, SnowdayWeb.Endpoint,
  https: [
    port: 4000,
    certfile: "../../../../priv/server.pem",
    keyfile: "../../../../priv/server.key"
  ],
  url: [scheme: "https", host: "snowday.phx.sh", port: 4000],
  force_ssl: [hsts: true]

config :logger, level: :debug
