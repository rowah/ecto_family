defmodule Family.Member do
  use Ecto.Schema
  import Ecto.Changeset

  schema "members" do
    field(:first_name, :string)
    field(:last_name, :string)
    field(:age, :integer, default: 0)
  end

  def changeset(member, params \\ %{}) do
    member
    |> cast(params, [:first_name, :last_name, :age])
    |> validate_required([:first_name, :last_name])
    |> validate_length(:first_name, min: 2)
    |> validate_length(:last_name, min: 2)
  end
end
