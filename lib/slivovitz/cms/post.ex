defmodule Slivovitz.Cms.Post do
  use Ecto.Schema
  import Ecto.Changeset

  alias Slivovitz.Cms.Comment

  schema "cms_posts" do
    field :content, :string
    field :title, :string

    has_many :comments, Comment

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content])
    |> validate_required([:title, :content])
  end
end
