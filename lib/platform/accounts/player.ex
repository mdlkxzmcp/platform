defmodule Platform.Accounts.Player do
  use Ecto.Schema
  import Ecto.Changeset
  alias Platform.Accounts.Player


  schema "accounts_players" do
    field :display_name, :string
    field :username, :string
    field :score, :integer
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  @doc false
  def changeset(%Player{} = player, attrs) do
    player
    |> cast(attrs, [:display_name, :username, :score])
    |> validate_required([:username])
  end
end
