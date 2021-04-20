defmodule SlivovitzWeb.Resolvers.CmsResolver do
  alias Slivovitz.Cms
  # alias Slivovitz.Cms.Post

  def list_posts(_parent, _args, _resolution) do
    {:ok, Cms.list_posts()}
  end
end
