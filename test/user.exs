defprotocol Size do
  @doc "Calculates the size (and not the length!) of a data structure"
  def size(data)
end

defmodule User do
  defstruct [:name, :age]
end

defimpl Size, for: User do
  def size(_user), do: 0
end

defimpl Size, for: Any do
  def size(_), do: 1
end

defmodule OtherUser do
  @derive [Size]
  defstruct [:name, :age]
end



defimpl Size, for: BitString do
  def size(string), do: byte_size(string)
end

defimpl Size, for: Map do
  def size(map), do: map_size(map)
end

defimpl Size, for: Tuple do
  def size(tuple), do: tuple_size(tuple)
end