defmodule RushingApp.StatisticsHelper do

  def sort_by_yds do
    json_statistics()
    |> Enum.sort_by(fn player -> player["Yds"] end, :desc)
  end

  def sort_by_lng do
    json_statistics()
    |> Enum.sort_by(fn player -> player["Lng"] end, :desc)
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
