defmodule OurFirstApioTest.RouterTest do
  use ExUnit.Case, async: true

  use Plug.Test

  @opts OurFirstApi.Router.init([])

  test "return ok" do
    build_conn = conn(:get, "/")
    conn = OurFirstApi.Router.call(build_conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "OK"
  end


end
