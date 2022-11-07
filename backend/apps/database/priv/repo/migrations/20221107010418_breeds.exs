defmodule Backend.Database.Repo.Migrations.Breeds do
  use Ecto.Migration

  def change do
    create table(:breeds, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:label, :text, null: false)
      timestamps()
    end
  end
end
