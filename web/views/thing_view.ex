defmodule Jatest.ThingView do
  use Jatest.Web, :view

  def render("index.json", %{things: things}) do
    %{data: render_many(things, Jatest.ThingView, "thing.json")}
  end

  def render("show.json", %{thing: thing}) do
    %{data: render_one(thing, Jatest.ThingView, "thing.json")}
  end

  def render("thing.json", %{thing: thing}) do
    %{id: thing.id,
      foo: thing.foo,
      bar: thing.bar}
  end
end
