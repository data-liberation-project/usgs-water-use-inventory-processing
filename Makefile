.PHONY: venv lint format notebooks

ruff := venv/bin/ruff

requirements.txt: requirements.in
	@pip-compile requirements.in

venv: requirements.txt
	@if [ ! -d "venv" ]; then python3 -m venv venv; fi
	@venv/bin/pip install pip-tools
	@venv/bin/pip-sync requirements.txt

lint:
	@$(ruff) check

format:
	@$(ruff) format
	@$(ruff) check --fix

notebooks:
	nbexec notebooks
