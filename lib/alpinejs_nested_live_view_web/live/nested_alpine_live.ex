defmodule NestedAlpineLive do
  use AlpinejsNestedLiveViewWeb, :live_view

  def render(assigns) do
    ~L"""
    <div>
      <h2 x-show="open">Should not be seen</h2>
    </div>
    """
  end
end
