defmodule Calculadora do
  def add(v1, v2), do: v1 + v2
  def subtract(v1, v2), do: v1 - v2
  def multiplication(v1, v2), do: v1 * v2
  def division(v1, v2), do: v1 / v2
end

defmodule App do
  import Calculadora
  def menu do
    IO.puts("choose your calc method:\n (1) +\n(2) -\n(3) * \n (4) / \n")
    method = IO.gets("") |> :erlang.list_to_binary() |> String.trim() |> String.to_integer()
    v1 = IO.gets("type the first value: ") |> :erlang.list_to_binary() |> String.trim() |> String.to_integer()
    v2 = IO.gets("type the second value: ") |> :erlang.list_to_binary() |> String.trim() |> String.to_integer()

    case method do
      1 -> add(v1, v2)
      2 -> subtract(v1, v2)
      3 -> multiplication(v1, v2)
      4 -> division(v1, v2)
    end
  end
end
