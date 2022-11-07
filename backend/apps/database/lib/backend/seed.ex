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
      label: "Affen Pinscher"
    })

    Repo.insert!(%Breed{
      label: "Border Collie"
    })
    Repo.insert!(%Breed{
      label: "Boxer"
    })
    Repo.insert!(%Breed{
      label: "Cocker Spaniel"
    })
    Repo.insert!(%Breed{
      label: "English Bulldog"
    })
    Repo.insert!(%Breed{
      label: "Great Dane"
    })
    Repo.insert!(%Breed{
      label: "Irish Terrier"
    })
    Repo.insert!(%Breed{
      label: "Norwich Terrier"
    })
    Repo.insert!(%Breed{
      label: "Pomeranian"
    })
    Repo.insert!(%Breed{
      label: "Shetland Sheepdog"
    })
  end
  
end
