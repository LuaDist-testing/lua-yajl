-- This file was automatically generated for the LuaDist project.

package = "lua-yajl"
version = "2.0-1"
-- LuaDist source
source = {
  tag = "2.0-1",
  url = "git://github.com/LuaDist-testing/lua-yajl.git"
}
-- Original source
-- source = {
-- 	url = "git://github.com/brimworks/lua-yajl.git",
-- 	branch = "v2.0",
-- }
description = {
	summary = "Integrate the yajl JSON library with Lua.",
	homepage = "http://github.com/brimworks/lua-yajl",
	license = "MIT/X11",
}
external_dependencies = {
  YAJL = {
    header = "yajl/yajl_parse.h",
    library = "yajl",
  },
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {
		yajl = {
			sources = { "lua_yajl.c" },
			libraries = { "yajl" },
		},
	},
}