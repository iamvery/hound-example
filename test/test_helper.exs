Application.ensure_all_started(:hound)
ExUnit.configure(exclude: [feature: true])
ExUnit.start

Mix.Task.run "ecto.create", ["--quiet"]
Mix.Task.run "ecto.migrate", ["--quiet"]
Ecto.Adapters.SQL.begin_test_transaction(HelloPhoenix.Repo)

