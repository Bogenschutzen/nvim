local options = {
	autochdir = true,
	exrc = true,
	secure = true,
	number = true,
	relativenumber = true,
	cursorline = true,
	tabstop = 2,
	shiftwidth = 2,
	softtabstop = 2,
	autoindent = true,
	list = true,
	scrolloff = 4,
	ttimeoutlen = 0,
	wrap = true,
	tw = 0,
	foldmethod = indent,
	foldlevel = 99,
	foldenable = true,
	splitright = true,
	splitbelow = true,
	ignorecase = true,
	smartcase = true,
	inccommand = split,
	lazyredraw = true,
	visualbell = true,
	colorcolumn = "100",
	updatetime = 100,
	virtualedit = block,
}

vim.opt.shortmess:append 'c'
for k, v in pairs(options) do
	vim.opt[k] = v
end
