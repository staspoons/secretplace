defmodule Allah do
	
	def start_link do
	start_link(fn -> loop(%{}) end)
end

defp loop(map) do
	loop(Map.put(map))
end

end