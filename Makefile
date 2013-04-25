echo:
	@echo "\n============================"
	@echo "Making internet pimp juice"
	@echo "============================\n"
	@say "building your stylesheet"
	@mkdir -p public/css
	@lessc --compress --verbose ./less/framework.less public/css/framework.min.css
	@lessc --compress --verbose ./less/style.less public/css/style.min.css
	@say "has finished successfully"
	@echo "\n==========================="
	@echo "Booyah"
	@echo "===========================\n"

clean:
	rm -r public/css

css: css/*.css

css/*.css: less/*.less
	@echo "\n============================"
	@echo "Making internet pimp juice"
	@echo "============================\n"
	@say "building your stylesheet"
	@mkdir -p public/css
	@lessc --compress --verbose ./less/framework.less public/css/framework.min.css
	@lessc --compress --verbose ./less/style.less public/css/style.min.css
	@say "has finished successfully"
	@echo "\n==========================="
	@echo "Booyah"
	@echo "===========================\n"

watch:
	echo "Watching less files..."; \
	watchr -e "watch('less/.*\.less') { system 'make css' }"

.PHONY:
	css watch