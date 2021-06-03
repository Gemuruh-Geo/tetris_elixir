defmodule BrickTest do
  use ExUnit.Case

  import Tetris.Brick
  test "Create a new Brick" do
    assert new().name == :i
    assert new().location == {40,0}
    assert new().rotation == 0
    assert new().reflection == false
  end

  test "Create New Random Brick" do
    actual = new_random()

    assert actual.name in [:i, :l, :z, :o, :t]
    assert actual.reflection in [true, false]
    assert actual.rotation in [0, 90, 180, 270]
  end

end
