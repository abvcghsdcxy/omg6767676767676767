--!nolint CommentDirective
--!grant RuntimeLoadstring

local games = {
    [6035872082] = "rivals.luau",
    [7395930870] = "sell_lemons.luau",
    [10066929248] = "hack_a_business.luau",
}

rbxcli.loadstring(game:GetService("HttpService"):RequestAsync({
    Method = "GET",
    Url = "https://raw.githubusercontent.com/abvcghsdcxy/omg6767676767676767/refs/heads/main/games/"
        .. games[game.GameId],
}).Body)()
