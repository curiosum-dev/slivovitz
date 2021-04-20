defmodule SlivovitzWeb.Schema do
  use Absinthe.Schema

  alias SlivovitzWeb.Resolvers
  alias Slivovitz.Repo

  def context(ctx) do
    loader =
      Dataloader.new()
      |> Dataloader.add_source(Repo, Dataloader.Ecto.new(Repo))

    Map.put(ctx, :loader, loader)
  end

  def plugins do
    [Absinthe.Middleware.Dataloader | Absinthe.Plugin.defaults()]
  end

  import_types(SlivovitzWeb.Schema.Types)

  query do
    @desc "Get all posts"
    field :posts, list_of(:post) do
      resolve(&Resolvers.CmsResolver.list_posts/3)
    end
  end
end
