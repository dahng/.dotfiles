-- Import safely
local status, coc = pcall(require, "coc.nvim")
if not status then
	return
end

-- Enable coc-java
coc.extensions.loadExtension("coc-java")

-- Setup coc-java for Java
coc.config.extensions.coc_java = {
	java_import_gradle = true, -- enable auto-import for gradle projects
	java_import_maven = true, -- enable auto-import for maven projects
	java_import_classpath = true, -- enable auto-import for classpath
	java_format_on_save = true, -- enable formatting on save
}
