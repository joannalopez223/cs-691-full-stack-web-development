defmodule EctoWorksheet.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :title, :string

      timestamps()
    end
  end
end
