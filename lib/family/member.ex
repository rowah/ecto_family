defmodule Family.Member do
  use Ecto.Schema

  schema "members" do
    field(:first_name, :string)
    field(:last_name, :string)
    field(:age, :integer, default: 0)
  end

  def changeset(member, params \\ %{}) do
    member
    |> Ecto.Changeset.cast(params, [:first_name, :last_name, :age])
    |> Ecto.Changeset.validate_required([:first_name, :last_name])
  end
end
