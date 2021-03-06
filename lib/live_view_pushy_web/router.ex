defmodule LiveViewPushyWeb.Router do
  use LiveViewPushyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveViewPushyWeb do
    pipe_through :browser

    get "/", PageController, :index

    live "/pictures", PicturesLive
    live "/pictures/:id", PicturesLive

    live "/moon", MoonLive
    live "/moon/:moon", MoonLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", LiveViewPushyWeb do
  #   pipe_through :api
  # end
end
