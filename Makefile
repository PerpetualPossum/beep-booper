activate:
	@echo "Activating virtual environment"
	@source venv/bin/activate

deps:
	@echo 'Installing requirements'
	@poetry install

run:
	@echo 'Running the application'
	@poetry run python beep_booper

# Personally I use Doppler for managing secrets and configs, so I have a target for that
doppler:
	@echo 'Running the application with Doppler'
	@poetry run doppler run -- python beep_booper