check:
	yamllint -d relaxed action.yml
dep:
	npm install @actions/core
	npm install @actions/github

dev:
	npm install --global @vercel/ncc

build:
	ncc build src/index.js --license licenses.txt
