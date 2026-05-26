local luasnip = require("luasnip")
local format = require("luasnip.extras.fmt").fmt

local snippet = luasnip.snippet
local insertNode = luasnip.insert_node
local functionNode = luasnip.function_node

local function toPascalCase(value)
	return value
			:gsub("[-_](%w)", function(character)
				return character:upper()
			end)
			:gsub("^%l", string.upper)
end

local function createSetterName(args)
	local stateName = args[1][1] or ""

	if stateName == "" then
		return "set"
	end

	return "set" .. toPascalCase(stateName)
end

local function createUseStateSnippet()
	return snippet("us", format("const [{}, {}] = useState<{}>({});{}", {
		insertNode(1, "name"),
		functionNode(createSetterName, { 1 }),
		insertNode(2),
		insertNode(3),
		insertNode(0),
	}))
end

for _, filetype in ipairs({ "typescriptreact", "javascriptreact", "typescript", "javascript" }) do
	luasnip.add_snippets(filetype, {
		createUseStateSnippet(),
	})
end
