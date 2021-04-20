defmodule SlivovitzWeb.Schema.Types do
  use Absinthe.Schema.Notation

  import Absinthe.Resolution.Helpers, only: [dataloader: 1]

  alias Slivovitz.Repo

  @desc "A post"
  object :post do
    field :id, :id
    field :title, :string
    field :content, :string

    field :comments, list_of(:comment) do
      resolve(dataloader(Repo))
    end
  end

  @desc "A post comment"
  object :comment do
    field :id, :id
    field :author, :string
    field :content, :string
  end
end
