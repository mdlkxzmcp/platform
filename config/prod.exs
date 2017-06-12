use Mix.Config

config :platform, Platform.Web.Endpoint,
  on_init: {Platform.Web.Endpoint, :load_from_system_env, []},
  url: [host: "mdlkxzmcp-test-platform.herokuapp.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json",
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Do not print debug messages in production
config :logger, level: :info

config :platform, Platform.Repo,
adapter: Ecto.Adapters.Postgres,
url: System.get_env("DATABASE_URL"),
pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
ssl: true

# import_config "prod.secret.exs"
