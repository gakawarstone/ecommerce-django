dev:
	.venv/bin/python src/manage.py runserver

migrate:
	.venv/bin/python src/manage.py migrate

update:
	git fetch && git pull
	docker compose stop && docker compose rm -f
	docker compose build
	docker compose up -d
