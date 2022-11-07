defmodule Backend.Database.Seed do
  alias Backend.Database.Repo
  alias Backend.Database.Schema.Breed

  def execute() do
    delete_all()
    seed_breeds()
  end

  defp delete_all(), do: Repo.delete_all(Breed)

  defp seed_breeds() do
    Repo.insert!(%Breed{
      label: "Affen Pinscher",
      image_url: "affenpinscher.jpg"
    })

    Repo.insert!(%Breed{
      label: "Border Collie",
      image_url: "border_collie.jpg"
    })

    Repo.insert!(%Breed{
      label: "Boxer",
      image_url: "boxer.jpg"
    })

    Repo.insert!(%Breed{
      label: "Cocker Spaniel",
      image_url: "cocker_spaniel.jpg"
    })

    Repo.insert!(%Breed{
      label: "English Bulldog",
      image_url: "english_bulldog.jpg"
    })

    Repo.insert!(%Breed{
      label: "Great Dane",
      image_url: "great_dane.jpg"
    })

    Repo.insert!(%Breed{
      label: "Irish Terrier",
      image_url: "irish_terrier.jpg"
    })

    Repo.insert!(%Breed{
      label: "Norwich Terrier",
      image_url: "norwich_terrier.jpg"
    })

    Repo.insert!(%Breed{
      label: "Pomeranian",
      image_url: "pomeranian.jpg"
    })

    Repo.insert!(%Breed{
      label: "Shetland Sheepdog",
      image_url: "shetland_sheepdog.jpg"
    })
  end
end
