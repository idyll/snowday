defmodule SnowdayWeb.PageController do
  use SnowdayWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def test_one(conn, params) do
    render conn, "test_one.html", %{}
  end
  def test_two(conn, params) do
    render conn, "test_two.html", %{}
  end
  def test_three(conn, params) do
    render conn, "test_three.html", %{}
  end
  def test_four(conn, params) do
    render conn, "test_four.html", %{}
  end
end
