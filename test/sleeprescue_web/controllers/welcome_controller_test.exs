defmodule SleeprescueWeb.WelcomeControllerTest do
  use SleeprescueWeb.ConnCase

  test "get /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Sign Up"
  end

end
