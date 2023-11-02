install:
	npm install gitbook-cli
	npx gitbook install

build:
	docker build -t python-style-guide .

up:
	docker compose up -d

down:
	docker compose down --volumes

serve:
	npx gitbook serve
