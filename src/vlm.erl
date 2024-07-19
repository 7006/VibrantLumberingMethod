-module(vlm).

-export([start/0]).

%% Used by make shell
start() ->
    application:ensure_all_started(?MODULE).
