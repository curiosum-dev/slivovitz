defmodule SlivovitzWeb.Schema do
  use Absinthe.Schema

  alias Slivovitz.Repo
  alias SlivovitzWeb.Resolvers
  alias SlivovitzWeb.Dataloaders.CmsDataloader

  def context(ctx) do
    loader =
      Dataloader.new()
      |> Dataloader.add_source(Repo, CmsDataloader.data())

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
