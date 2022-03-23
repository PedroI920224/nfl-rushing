# RushingApp
This project is an assessment that responds to the next task:
https://github.com/tsicareers/nfl-rushing

This an Elixir project with Phoenix and Liveview.
you should have available the port 4001 to check the project running.


<img width="1334" alt="image" src="https://user-images.githubusercontent.com/19864868/159716280-a1703929-e7b2-4b53-99d6-2ee7d245cfb0.png">

you can run this project using docker-compose:
```
docker-compose build
docker-compose up
```
visit `http://localhost:4001/` to check the project.

If you don't have Docker, you should install Elixir 1.13, Phoenix 1.6.6.

In this project you will be able to search a player by name or a pattern:
<img width="1453" alt="image" src="https://user-images.githubusercontent.com/19864868/159730899-f6cb3a25-29b1-424f-a7d9-69644f501966.png">

You will be able to order by Total Rushing Yards, Longest Rush or Rushing Touchdowns.

also you will be able to download csv file without lost the previous action:

<img width="648" alt="image" src="https://user-images.githubusercontent.com/19864868/159731454-8ca9e916-aebf-452a-8d21-aa500b0371b4.png">

What missing:
1. Populate with tests using ExUnit.
2. Improve Design.
3. Add headers to the CSV files.

References:
Phoenix LiveView: https://hexdocs.pm/phoenix_live_view/Phoenix.LiveView.html
Creating a TODo List using LiveView: https://dennisbeatty.com/how-to-create-a-todo-list-with-phoenix-liveview/
Bootstrap Docs: https://getbootstrap.com/
