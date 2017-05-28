defmodule Boilerplate.Repo.Migrations.CreateBoilerplate.Accounts.User do
  use Ecto.Migration

  def change do
    create table(:accounts_users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string

      timestamps()
    end

  end
end
