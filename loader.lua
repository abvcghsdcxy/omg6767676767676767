--!grant RuntimeLoadstring
rbxcli.loadstring(game:GetService("HttpService"):RequestAsync({
    Method = "GET",
    Url = ""
}).Body)()
