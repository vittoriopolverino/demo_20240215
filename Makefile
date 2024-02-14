VENV_BIN = python3 -m venv
VENV_DIR ?= .venv
VENV_ACTIVATE = $(VENV_DIR)/bin/activate
VENV_RUN = . $(VENV_ACTIVATE)

venv: $(VENV_ACTIVATE)

$(VENV_ACTIVATE): tinybird/requirements.txt
	test -d $(VENV_DIR) || python3 -m venv $(VENV_DIR)
	$(VENV_RUN); pip install --upgrade pip
	$(VENV_RUN); find tinybird/ -name "requirements.txt" -exec pip install -r {} +
	touch $(VENV_DIR)/bin/activate

clean:
	rm -rf .venv
	rm -rf build/
	rm -rf .eggs/
	rm -rf *.egg-info/
	rm -rf node_modules

format:
	$(VENV_RUN); source tinybird/scripts/format.sh

.PHONY: clean format
