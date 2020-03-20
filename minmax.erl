-module(minmax).
-export([minimum/1]).
-export([maximum/1]).
-export([start/0]).

start()-> List = [20,17,13], maximum(List), minimum(List).




minimum([]) -> io:format("cannot find min in empty list");

minimum([H|T])  ->
        minimum(H, T).

minimum(Min, [H|T]) ->
        case Min < H of
                true  -> minimum(Min, T);
                false -> minimum(H, T)
        end;

minimum(Min, []) -> io:fwrite("Min is ~p~n", [Min]).


maximum([])     -> io:format("cannot find max in empty list");
maximum([H|T])  ->
                maximum(H, T).

maximum(Max, [H|T])     ->
                        case Max > H of
                        true    -> maximum(Max, T);
                        false   -> maximum(H, T)
                        end;
maximum(Max, [])        -> io:fwrite("Max is ~p~n", [Max]).
