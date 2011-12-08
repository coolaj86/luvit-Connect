local App = {}

function App.get (app, path, params, fn)
	if app.req.method == "GET" then
		if app.req.url == path then
			fn (app.req, app.res)
			app.handled = true
		end
	end
end

function App.post(self, path, params, fn)
	if app.req.method == "POST" then
		if app.req.url == path then
			fn (app.req, app.res) -- data ?? must review api
			app.handled = true
		end
	end
end

function App.error(self, fn)
	-- TODO
end

App.method = {}

return App