# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ueberauth_guardian_example,
  ecto_repos: [UeberauthGuardianExample.Repo]

# Configures the endpoint
config :ueberauth_guardian_example, UeberauthGuardianExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "x7P7Omz1Sftb0KfLH6C8IZ5JR52Ugdq/fdFijbHCDlDAlSMYQgRdWda/LnE6hldn",
  render_errors: [view: UeberauthGuardianExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UeberauthGuardianExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
