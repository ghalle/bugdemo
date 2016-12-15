defmodule BugDemo.TestChannel do
  use BugDemo.Web, :channel

  def join("test", _payload, socket) do
    Process.sleep(5000)
    {:ok, socket}
  end
end
