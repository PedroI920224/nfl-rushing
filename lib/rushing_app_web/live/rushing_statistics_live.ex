defmodule RushingAppWeb.RushingStatisticsLive do
  # In Phoenix v1.6+ apps, the line below should be: use MyAppWeb, :live_view
  use RushingAppWeb, :live_view
  alias RushingApp.StatisticsHelper

  def mount(_params, _session, socket) do
    rushing_attributes = %{
      statistics: StatisticsHelper.json_statistics(),
      download_filter: ""
    }
    {:ok, assign(socket, rushing_attributes: rushing_attributes)}
  end

  def handle_event("order_by_yds", _value, socket) do
    rushing_attributes = %{
      statistics: StatisticsHelper.sort_by_yds(),
      download_filter: "order_by_yds"
    }
    {:noreply, assign(socket, :rushing_attributes, rushing_attributes)}
  end

  def handle_event("order_by_lng", _value, socket) do
    rushing_attributes = %{
      statistics: StatisticsHelper.sort_by_lng(),
      download_filter: "order_by_lng"
    }
    {:noreply, assign(socket, :rushing_attributes, rushing_attributes)}
  end

  def handle_event("order_by_td", _value, socket) do
    rushing_attributes = %{
      statistics: StatisticsHelper.sort_by_td(),
      download_filter: "order_by_td"
    }
    {:noreply, assign(socket, :rushing_attributes, rushing_attributes)}
  end

  def handle_event("search_by_name", %{"player" => %{"name" => name}}, socket) do
    rushing_attributes = %{
      statistics: StatisticsHelper.filter_by_name(name),
      download_filter: %{player_name: name}
    }
    {:noreply, assign(socket, :rushing_attributes, rushing_attributes)}
  end
end
