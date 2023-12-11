defmodule Family.Member do
  use Ecto.Schema
  import Ecto.Changeset

  @family_names ["Rowa", "Mensire"]

  schema "members" do
    field(:first_name, :string)
    field(:last_name, :string)
    field(:age, :integer, default: 0)
  end

  def validate_family_name(changeset) do
    last_name = get_field(changeset, :last_name)

    if last_name in @family_names do
      changeset
    else
      add_error(changeset, :last_name, "Is not a Family Member")
    end
  end

  def changeset(member, params \\ %{}) do
    member
    |> cast(params, [:first_name, :last_name, :age])
    |> validate_required([:first_name, :last_name])
    |> validate_length(:first_name, min: 2)
    |> validate_length(:last_name, min: 2)
    |> validate_family_name()
  end
end
