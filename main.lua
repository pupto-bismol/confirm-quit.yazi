local M = {}

local count = ya.sync(function() return #cx.tabs end)
local no_cwd_file = job.args.no_cwd_file
local close = job.args.close

local function quit_or_close()
	if close then return "close" else return "quit" end
end

function M:entry()
	if count() < 2 then
		return ya.emit(quit_or_close(), {no_cwd_file})
	end

	local title = ""
	if close then
		title = "Close?",
	else
		title = "Quit?",
	end

	local yes = ya.confirm {
		pos = { "center", w = 60, h = 10 },
		title = title,
		content = ui.Text("There are multiple tabs open. Are you sure you want to quit?"):wrap(ui.Wrap.YES),
	}
	if yes then
		ya.emit(quit_or_close(), {no_cwd_file})
	end
end

return M
