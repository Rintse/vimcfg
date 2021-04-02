# NVim config
Vim configuration, as well as gather and deployment scripts to allow for synched
configs across devices. Contains:
- Coc configuration
- init.nvim
- Config files for the various plugins

Use `./gather` followed by a regular git push to commit the current device's
configuration to the github.

Perform a git pull followed by `./deploy` to deploy the configuration from
github onto the current device.
