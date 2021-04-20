defmodule SlivovitzWeb.Router do
  use SlivovitzWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: SlivovitzWeb.Schema

    forward "/", Absinthe.Plug, schema: SlivovitzWeb.Schema
  end
end
