defmodule AlpinejsNestedLiveViewWeb.PageLive do
  use AlpinejsNestedLiveViewWeb, :live_view

  def render(assigns) do
    ~L"""
    <h1>Main Live View</h1>
    <div x-data="{ open: false }">
      <h2 x-show="open">Should not be seen</h2>
      <%= live_render(@socket, NestedAlpineLive, id: "nested-apline") %>
    </div>
    """
  end
end
