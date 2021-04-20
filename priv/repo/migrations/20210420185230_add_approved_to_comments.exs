defmodule Slivovitz.Repo.Migrations.AddApprovedToComments do
  use Ecto.Migration

  def change do
    alter table("cms_comments") do
      add :approved, :boolean, null: false, default: false
    end
  end
end
