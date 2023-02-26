defmodule WordSorter do
  def getSortedWords(words) do
    Enum.sort(words)
  end
end

argc_count = length(System.argv)
input_file_name = List.first(System.argv)
if argc_count != 1 do
  raise "Error: Invalid number of arguments."
  end

case File.open(input_file_name) do
  {:ok, input_file} ->
    input_file_data = IO.read(input_file, :line)
    returned_string = String.split(input_file_data, " ") |> WordSorter.getSortedWords() |> Enum.join(" ")

    File.close(input_file)
    IO.puts(returned_string)
  {:error, _ } ->
    raise "Error: Unable to open file #{input_file_name}"
end
