defmodule TripsWeb.Router do
  use TripsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TripsWeb do
    pipe_through :api
  end
end
