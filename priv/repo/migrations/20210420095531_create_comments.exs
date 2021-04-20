defmodule Slivovitz.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:cms_comments) do
      add :author, :string
      add :content, :text
      add :post_id, references(:cms_posts, on_delete: :nothing)

      timestamps()
    end

    create index(:cms_comments, [:post_id])
  end
end
