defmodule ElixirPlugExample do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/hello" do
    send_resp(conn, 200, "world")
  end

  #  forward "/users", to: UsersRouter

  match _ do
    send_resp(conn, 404, "not found - oops")
  end
end
