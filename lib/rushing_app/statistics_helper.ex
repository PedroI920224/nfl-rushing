defmodule RushingApp.StatisticsHelper do

  def sort_by_yds do
    json_statistics()
    |> Enum.sort_by(fn player ->
      if is_binary(player["Yds"]) do
        {integer_yds, _} = player["Yds"] |> String.replace(",", "") |> Integer.parse
        integer_yds
      else
        player["Yds"]
      end
    end, :desc)
  end

  def sort_by_lng do
    json_statistics()
    |> Enum.sort_by(fn player ->
      cond do
        is_binary(player["Lng"]) && String.contains?(player["Lng"], "T") ->
          {integer_lng, _} = player["Lng"] |> String.replace("T", "00") |> Integer.parse
          integer_lng
        is_binary(player["Lng"]) ->
          {integer_lng, _} = player["Lng"] |> Integer.parse
          integer_lng
        true ->
          player["Lng"]
      end
    end, :desc)
  end

  def sort_by_td do
    json_statistics()
    |> Enum.sort_by(fn player -> player["TD"] end, :desc)
  end

  def filter_by_name(name_pattern) do
    json_statistics()
    |> Enum.filter(
      fn player ->
        player["Player"] |> String.downcase =~ name_pattern |> String.downcase
      end
    )
  end

  def json_statistics do
    File.read!("rushing.json")
    |> Jason.decode!()
  end
end
