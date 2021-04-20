defmodule Slivovitz.Cms.PostQueries do
  import Ecto.Query
  alias Slivovitz.Cms.Post

  def all(query \\ base()), do: query

  def with_id(query \\ base(), id) do
    query
    |> where([post], post.id == ^id)
  end

  defp base, do: Post
end
