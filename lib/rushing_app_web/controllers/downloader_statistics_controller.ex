defmodule RushingAppWeb.DownloaderStatisticsController do
  use RushingAppWeb, :controller
  alias RushingApp.CsvHelper

  def create(conn, params) do
    conn
    |> put_resp_content_type("text/csv")
    |> put_resp_header("content-disposition", "attachment; filename=\"statistics_report.csv\"")
    |> put_root_layout(false)
    |> send_resp(200, CsvHelper.csv_content(params))
  end
end
