# Testing

My current testing strategy is utilizing two Vagrant boxes and running the main testing playbook.

## Organization

#### `test.yml`

This is the main playbook. If a new testing scenario must be added, we must:

1. Create a new playbook describing the test
2. Add an entry in test.yml

#### `test-*.yml`

Any specific testing playbook. One small feature at a time.

#### `hosts` + `test.sh`

Feel free to edit these as you see fit. Because testing was done with a Vagrant synced folder, the script is a bit of a hack to fix the syncing permission issues.
