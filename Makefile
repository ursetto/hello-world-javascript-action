check:
	yamllint -d relaxed action.yml
dep:
	npm install @actions/core
	npm install @actions/github
