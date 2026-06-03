.PHONY: all test report clean help setup

all:
	bash scripts/analyze.sh test_data/sample_pass.log

test:
	bash scripts/analyze.sh test_data/sample_pass.log
	bash scripts/analyze.sh test_data/sample_fail.log || true

report:
	bash scripts/generate_report.sh

setup:
	bash scripts/setup_env.sh

clean:
	rm -rf output/*

help:
	@echo "Targets:"
	@echo "make all"
	@echo "make test"
	@echo "make report"
	@echo "make setup"
	@echo "make clean"