# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bug_demo,
  ecto_repos: [BugDemo.Repo]

# Configures the endpoint
config :bug_demo, BugDemo.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MWyonIEPhKgZFETtxDDL6cNmY8BICTuYsmxYoRAoMW7Tivw2VFjsNcL75ECB82RU",
  render_errors: [view: BugDemo.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BugDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
