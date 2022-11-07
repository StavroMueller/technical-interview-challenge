defmodule Backend.Database.Repo.Migrations.BreedImages do
  use Ecto.Migration

  def change do
    alter table("breeds") do
      add(:image_url, :text)
    end
  end
end
