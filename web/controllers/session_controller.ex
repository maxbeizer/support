defmodule Support.SessionController do
  use Support.Web, :controller

  alias Support.User

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, %{"user" => user_params}) do
  end

  def delete(conn, _options) do
  end
end
