--!nolint CommentDirective
--!grant RuntimeLoadstring

local games = {
    [6035872082] = "rivals",
    [7395930870] = "sell_lemons",
    [10066929248] = "hack_a_business",
}

local script = games[game.GameId]
if script then require("games/" .. script)() end
