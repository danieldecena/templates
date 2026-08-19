.PHONY: test lint run clean

test:
	pytest tests/

lint:
	ruff check src/

run:
	python src/project_alpha/intake.py
