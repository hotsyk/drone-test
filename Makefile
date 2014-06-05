.PHONY: bootstrap clean deploy pep8 test

# Project constants
PROJECT = smalldjangoapp

bootstrap: clean
	virtualenv venv
	python venv/bin/activate_this.py
	pip install -r requirements.txt

clean:
	find . -name "*.pyc" -delete
	find . -type d -empty -delete

deploy: clean
	echo "deploy is finished"

pep8:
	pyflakes $(PROJECT)/

test: clean pep8
	python $(PROJECT)/manage.py test
