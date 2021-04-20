defmodule SlivovitzWeb.Dataloaders.CmsDataloader do
  alias Slivovitz.Cms.{CommentQueries}

  def data() do
    Dataloader.Ecto.new(Slivovitz.Repo, query: &query/2)
  end

  def query(Comment, %{show_unapproved: show_unapproved}) do
    if show_unapproved, do: CommentQueries.all(), else: CommentQueries.approved()
  end

  def query(queryable, _args), do: queryable
end
