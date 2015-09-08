defmodule Jatest.Repo.Migrations.CreateThing do
  use Ecto.Migration

  def change do
    create table(:things) do
      add :foo, :string
      add :bar, :integer

      timestamps
    end

  end
end
