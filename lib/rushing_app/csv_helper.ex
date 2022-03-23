defmodule RushingApp.CsvHelper do
  alias RushingApp.StatisticsHelper
  @fields [
    "Player", "Team", "Pos", "Att", "Att/G",
    "Yds", "TD", "Lng", "1st", "1st%", "20+",
    "40+", "FUM"
  ]

  def csv_content(filters) do
    filters
    |> json_filtered()
    |> Enum.map(fn record ->
      record
      |> Map.take(@fields)
      |> Map.values()
    end)
    |> CSV.encode()
    |> Enum.to_list()
    |> to_string()
  end

  def json_filtered(%{"filter" => %{"player_name" => name_pattern}}) do
    StatisticsHelper.filter_by_name(name_pattern)
  end
  def json_filtered(%{"filter" => "order_by_td"}), do: StatisticsHelper.sort_by_td()
  def json_filtered(%{"filter" => "order_by_lng"}), do: StatisticsHelper.sort_by_lng()
  def json_filtered(%{"filter" => "order_by_yds"}), do: StatisticsHelper.sort_by_yds()
  def json_filtered(_), do: StatisticsHelper.json_statistics()
end
