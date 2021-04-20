defmodule Slivovitz.Cms.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  alias Slivovitz.Cms.Post

  schema "cms_comments" do
    field :author, :string
    field :content, :string

    belongs_to :post, Post

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:author, :content, :post_id])
    |> validate_required([:author, :content, :post_id])
  end
end
