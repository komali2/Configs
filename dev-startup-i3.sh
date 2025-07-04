#!/bin/bash

# Switch to workspace 1
i3-msg 'workspace 1'

# Launch first terminal (FastAPI)
i3-msg 'exec alacritty -e /home/caleb/src/reactwise/ReactWise/apps/backend/scripts/fastapi'
sleep 0.2

# Split horizontally and launch second terminal (Celery)
i3-msg 'split h; exec alacritty -e /home/caleb/src/reactwise/ReactWise/apps/backend/scripts/celery'
sleep 0.2

# Split vertically and launch third terminal (npm dev)
i3-msg 'split v; exec sh -c "cd /home/caleb/src/reactwise/ReactWise/apps/webapp/ && alacritty -e npm run dev"'
sleep 0.2

# Focus left and split vertically for fourth terminal (storybook)
i3-msg 'focus left; split v; exec sh -c "cd /home/caleb/src/reactwise/ReactWise/apps/webapp/ && alacritty -e npm run storybook"'