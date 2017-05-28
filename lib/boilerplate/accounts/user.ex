defmodule Boilerplate.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Boilerplate.Accounts.User


  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "accounts_users" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
