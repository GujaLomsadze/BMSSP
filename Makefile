.PHONY: install install-dev test lint format clean build publish

install:
	pip install -e .

install-dev:
	pip install -e ".[dev]"

test:
	pytest

test-cov:
	pytest --cov=pg2ch --cov-report=html

clean:
	sudo rm -rf build dist *.egg-info
	find . -type f -name "*.pyc" -delete

build:
	python -m build

publish-test:
	twine upload --repository testpypi dist/*

publish:
	twine upload dist/*

pre-commit-install:
	pre-commit install

pre-commit-run:
	pre-commit run --all-files
