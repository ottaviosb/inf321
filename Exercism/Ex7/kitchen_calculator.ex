defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_, volume} = volume_pair
    volume
  end

  def to_milliliter({:cup, valor}) do
    {:milliliter, valor * 240}
  end

  def to_milliliter({:fluid_ounce, valor}) do
    {:milliliter, valor * 30}
  end

  def to_milliliter({:teaspoon, valor}) do
    {:milliliter, valor * 5}
  end

  def to_milliliter({:tablespoon, valor}) do
    {:milliliter, valor * 15}
  end

  def to_milliliter({:milliliter, valor}) do
    {:milliliter, valor}
  end

  def from_milliliter({:milliliter, valor}, :milliliter) do
    {:milliliter, valor}
  end

  def from_milliliter({:milliliter, valor}, :cup) do
    {:cup, valor / 240}
  end

  def from_milliliter({:milliliter, valor}, :fluid_ounce) do
    {:fluid_ounce, valor / 30}
  end

  def from_milliliter({:milliliter, valor}, :teaspoon) do
    {:teaspoon, valor / 5}
  end

  def from_milliliter({:milliliter, valor}, :tablespoon) do
    {:tablespoon, valor / 15}
  end

  def convert(volume_pair, unit) do
    {_, valor} = to_milliliter(volume_pair)
    from_milliliter({:milliliter, valor}, unit) 
  end
end
