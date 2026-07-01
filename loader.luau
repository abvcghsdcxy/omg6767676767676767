--!grant RuntimeLoadstring

local games = {
	[6035872082] = "rivals.luau",
}

rbxcli.loadstring(game:GetService("HttpService"):RequestAsync({
	Method = "GET",
	Url = "https://raw.githubusercontent.com/abvcghsdcxy/omg6767676767676767/refs/heads/main/games/"
		.. games[game.GameId],
}).Body)()
