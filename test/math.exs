defmodule Math do
	alias Math
  def sum(a, b) do
  	c = a + b 
   if c == 3 do
   	
   
   do_sum()
else 
	c


  end
end

defp do_sum() do
  IO.puts "Hello this is doo sum"
end






def binar(<<50>>), do: true


def binar(x) when is_binary(x), do: false


def binar(x) when is_float(x), do: IO.puts "This is a float"


def joindefault(a, b \\ 2, space \\ " ")  #space value is set to " " by default and b is set to nill


def joindefault(a,b,space) do
	a <> space <> b <> space <> a <> space <> b 
end


def print_multiple_times(msg, n) when n <= 1 do
 IO.puts msg
end

def print_multiple_times(msg, n) do
 IO.puts msg 
 print_multiple_times(msg, n - 1)
end

  def double_each([head | tail]) do
   [head * 2 | double_each(tail)]
   end

  def double_each([]) do
    []
  end

end

IO.puts Math.sum(1,2)

IO.puts Math.binar(<<50>>)

