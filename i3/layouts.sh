#!/bin/bash

# ws1="1:  Teams"
# ws2="2:  VMWare"
# ws3="3:  Terminal"
# ws4="4:  Firefox"

ws1="1:I"
ws2="2:II"
ws3="3:III"
ws4="4:IV"

# Workspace 2:II
i3-msg "workspace $ws2; append_layout ~/.config/i3/workspace_layout.json"

sleep 1
alacritty --working-directory ~/Workspace/teddy/consignado/consig-data & # -e fish -C 'source ./bin/activate.fish'

sleep 1
alacritty --working-directory ~/Workspace/teddy/consignado/simulation & # -e fish -c 'bun run start:dev' &

sleep 1
alacritty --working-directory ~/Workspace/teddy/consignado/worker & # -e fish -c 'bun run start:dev' &

sleep 1
alacritty --working-directory ~/Workspace/teddy/consignado/backend & # -e fish -C 'bun run start:dev'

sleep 1
alacritty --working-directory ~/Workspace/teddy/consignado/frontend & # -e fish -C 'bun run dev'

sleep 1
alacritty --working-directory ~/Workspace/teddy/consignado/compose & # -e fish -C 'podman-compose up'

sleep 1
alacritty --working-directory ~/Workspace/teddy & # -e fish -c 'bun run start:dev' &

# Workspace 3:III
sleep 1
i3-msg "workspace $ws3; exec alacritty --working-directory ~/Workspace/teddy/consignado -e fish -c \"nvim\"" &

# Workspace 4:IV
sleep 1
i3-msg "workspace $ws4; exec flatpak run org.mozilla.firefox"

# Workspace 1:I
sleep 1
i3-msg "workspace $ws1; exec flatpak run com.github.IsmaelMartinez.teams_for_linux"
