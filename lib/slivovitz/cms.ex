defmodule Slivovitz.Cms do
  alias Slivovitz.Repo
  alias Slivovitz.Cms.PostQueries

  def list_posts() do
    Repo.all(PostQueries.all())
  end
end
