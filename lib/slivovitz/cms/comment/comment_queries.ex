defmodule Slivovitz.Cms.CommentQueries do
  import Ecto.Query
  alias Slivovitz.Cms.Comment

  def all(query \\ base()), do: query

  def with_id(query \\ base(), id) do
    query
    |> where([comment], comment.id == ^id)
  end

  def approved(query \\ base()) do
    query
    |> where([comment], comment.approved == true)
  end

  defp base, do: Comment
end
