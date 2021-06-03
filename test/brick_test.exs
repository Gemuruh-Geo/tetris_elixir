defmodule BrickTest do
  use ExUnit.Case

  import Tetris.Brick
  test "Create a new Brick" do
    assert new().name == :i
    assert new().location == {40,0}
    assert new().rotation == 0
    assert new().reflection == false
  end


end
