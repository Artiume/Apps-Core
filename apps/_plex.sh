#!/bin/bash
#
# Title:      PlexGuide (Reference Title File)
# Author(s):  Admin9705 - Deiteq
# URL:        https://plexguide.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################

# FUNCTIONS START ##############################################################

# BAD INPUT
badinput () {
    echo
    read -p '⛔️ ERROR - BAD INPUT! | PRESS [ENTER] ' typed < /dev/tty
    
}

# FIRST QUESTION

question1 () {
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 Plex - Version of Plex To Install?
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1 - Plex Public
2 - Plex Pass

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
    
    read -p 'Type a Number | Press [ENTER]: ' typed < /dev/tty
    if [ "$typed" == "1" ]; then echo public > /var/plexguide/plex.extension && question2;
        elif [ "$typed" == "2" ]; then echo plexpass > /var/plexguide/plex.extension && question2;
else badinput; fi
}

# SECOND QUESTION
question2 () {
tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌎 Claim the Plex Server
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

To claim the Plex server, visit https://www.plex.tv/claim and input the
code below within 5 minutes!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
    
    read -p 'Plex Server Claim Number | Press [ENTER]: ' typed < /dev/tty
    echo $typed > /var/plexguide/plex.claim && break=on;
}

# FUNCTIONS END ##############################################################

question1
#ansible-playbook /opt/coreapps/apps/plex.yml
