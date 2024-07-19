-module(vlm).

-export([start/0]).
-export([enqueue_yolo/0]).
-export([enqueue_frob/0]).
-export([perform_task/1]).

%% Used by make shell
start() ->
    application:ensure_all_started(?MODULE).

enqueue_yolo() ->
    enqueue(yolo).

enqueue_frob() ->
    enqueue(frob).

enqueue(QueueId) ->
    ok = wolfmq:push(QueueId, {?MODULE, perform_task, [QueueId]}).

perform_task(QueueId) ->
    timer:sleep(5_000),
    io:format("~s!~n", [QueueId]).
