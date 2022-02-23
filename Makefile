all: check dep dev build

check:
	yamllint -d relaxed action.yml
dep:
	# Install package dependencies
	npm install
	@# npm install @actions/core
	@# npm install @actions/github

dev:
	npm install --global @vercel/ncc

build:
	ncc build src/index.js --license licenses.txt
