# Define variables
SERVICE_NAME=binaryClock.service
SCRIPT=binaryClock.py
TEMP_DIR=Temp

# All target: calls other targets
all: create-temp run-script

# Target 1: Create a folder "Temp" and copy binaryClock.py to it
create-temp:
	@echo "Creating Temp directory and copying $(SCRIPT)..."
	mkdir -p $(TEMP_DIR)
	cp $(SCRIPT) $(TEMP_DIR)/

# Target 2: Run the binaryClock script
run-script: create-temp
	@echo "Running $(SCRIPT)..."
	python3 $(TEMP_DIR)/$(SCRIPT)

# Target 3: Delete the Temp folder
delete-temp:
	@echo "Deleting Temp directory..."
	rm -rf $(TEMP_DIR)

# Target 4: Delete the binaryClock service
delete-service:
	sudo systemctl stop $(SERVICE_NAME)
	sudo systemctl disable $(SERVICE_NAME)

# Target 5: Restore the binaryClock service
restore-service:
	@echo "Restoring the $(SERVICE_NAME) service..."
	sudo systemctl enable $(SERVICE_NAME)
	sudo systemctl start $(SERVICE_NAME)
	@echo "$(SERVICE_NAME) service restored."

# Phony targets to avoid conflicts with files of the same name
.PHONY: all create-temp run-script delete-temp delete-service restore-service
