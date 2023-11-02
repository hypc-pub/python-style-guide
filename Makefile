install:
	npm install gitbook-cli
	npx gitbook install

build:
	docker build -t python-style-guide .

serve:
	npx gitbook serve
