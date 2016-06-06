-module(functions).
-compile(export_all).

head([H | _]) -> H.
second([_, X | _]) -> X.
same(X,X) ->
    ture;
same(_,_) ->
    false.
valid_time({Date = {Y, M, D}, Time = {H, Min, S}}) ->
    io:format("the date tupe (~p) says todya is: ~p/~p/~p,~n",[Date, Y, M, D]),
    io:format("the time tuple (~p) says todya is: ~p:~p:~p.~n",[Time, H, Min, S]);
valid_time(_) ->
    io:format("Stop feeding me wrong data!~n").

old_enough(X) when X >= 16 -> true;
old_enough(_) -> false.
