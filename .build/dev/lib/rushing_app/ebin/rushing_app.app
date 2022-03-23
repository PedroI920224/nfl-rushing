{application,rushing_app,
    [{compile_env,[{rushing_app,['Elixir.RushingAppWeb.Gettext'],error}]},
     {applications,
         [kernel,stdlib,elixir,logger,runtime_tools,phoenix,phoenix_html,
          phoenix_live_reload,phoenix_live_view,phoenix_live_dashboard,
          esbuild,swoosh,telemetry_metrics,telemetry_poller,gettext,jason,
          dart_sass,csv,plug_cowboy]},
     {description,"rushing_app"},
     {modules,
         ['Elixir.RushingApp','Elixir.RushingApp.Application',
          'Elixir.RushingApp.Mailer','Elixir.RushingApp.Repo',
          'Elixir.RushingAppWeb',
          'Elixir.RushingAppWeb.DownloaderStatisticsController',
          'Elixir.RushingAppWeb.Endpoint','Elixir.RushingAppWeb.ErrorHelpers',
          'Elixir.RushingAppWeb.ErrorView','Elixir.RushingAppWeb.Gettext',
          'Elixir.RushingAppWeb.LayoutView',
          'Elixir.RushingAppWeb.PageController',
          'Elixir.RushingAppWeb.PageView','Elixir.RushingAppWeb.Router',
          'Elixir.RushingAppWeb.Router.Helpers',
          'Elixir.RushingAppWeb.RushingStatisticsLive',
          'Elixir.RushingAppWeb.Telemetry']},
     {registered,[]},
     {vsn,"0.1.0"},
     {mod,{'Elixir.RushingApp.Application',[]}}]}.