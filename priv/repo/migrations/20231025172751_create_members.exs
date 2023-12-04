defmodule Family.Repo.Migrations.CreateMembers do
  use Ecto.Migration

  def change do
    create table(:members) do
      add :first_name, :string, null: false
      add :last_name, :string, null: false
      add :age, :integer, default: 0

    end
  end
end
