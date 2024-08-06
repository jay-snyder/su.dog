.PHONY: upload preview
.DEFAULT_GOAL := preview

upload:
	scp -r html Caddyfile docker-compose.yml webmaster@su.dog:/srv/su.dog

preview:
	xdg-open http://127.0.0.1:3000/html/index.html
