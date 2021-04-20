defmodule Slivovitz.Cms.CommentQueries do
  import Ecto.Query
  alias Slivovitz.Cms.Comment

  def all(query \\ base()), do: query

  def with_id(query \\ base(), id) do
    query
    |> where([post], post.id == ^id)
  end

  defp base, do: Comment
end
