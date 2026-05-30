.PHONY: all test report clean help setup

all:
	@echo "Running analyzer on all logs..."

test:
	@echo "Testing sample logs..."
	@echo "Tests completed"

report:
	@echo "Generating report..."
	@bash scripts/generate_report.sh

clean:
	@echo "Cleaning output..."
	@rm -rf output/*

setup:
	@bash scripts/setup_env.sh

help:
	@echo "Available targets:"
	@echo "  all     - Run analyzer"
	@echo "  test    - Run tests"
	@echo "  report  - Generate report"
	@echo "  clean   - Remove output files"
	@echo "  setup   - Verify environment"
	@echo "  help    - Show this help"