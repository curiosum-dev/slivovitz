defmodule Slivovitz.Cms do
  alias Slivovitz.Repo
  alias Slivovitz.Cms.Post

  def list_posts() do
    Repo.all(Post)
  end
end
