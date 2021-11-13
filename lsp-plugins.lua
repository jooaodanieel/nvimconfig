-- npm i -g vscode-langservers-extracted
require'lspconfig'.eslint.setup{}

-- npm i -g vscode-langservers-extracted
require'lspconfig'.jsonls.setup{}

-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{}

-- npm install -g vls
require'lspconfig'.vuels.setup{}

