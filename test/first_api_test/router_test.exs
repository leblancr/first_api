defmodule FirstApiTest.RouterTest do
  use ExUnit.Case, async: true

  use Plug.Test # allows use of conn

  @opts FirstApi.Router.init([]) # module attribute

  test "return ok" do
    build_conn = conn(:get, "/")
    conn = FirstApi.Router.call(build_conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "OK"

  end

end