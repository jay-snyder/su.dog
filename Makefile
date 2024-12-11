.PHONY: upload preview
.DEFAULT_GOAL := preview

upload:
	scp -r html Caddyfile docker-compose.yml webmaster@su.dog:/srv/su.dog

preview:
	docker-compose up
