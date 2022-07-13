-- npm i -g vscode-langservers-extracted
require'lspconfig'.eslint.setup{}

-- npm i -g vscode-langservers-extracted
require'lspconfig'.jsonls.setup{}

-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{}

-- npm install -g vls
require'lspconfig'.vuels.setup{}

-- gem install --user-install solargraph
require'lspconfig'.solargraph.setup{}

-- see https://github.com/fwcd/kotlin-language-server/blob/main/BUILDING.md
require'lspconfig'.kotlin_language_server.setup{}
