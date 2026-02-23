#!/bin/bash
set -e

echo "Creating Talk Room..."
TOKEN=$(php occ talk:room:create --user agent1 --public "Project Alpha" | grep "Room token:" | awk '{print $3}')
if [ -n "$TOKEN" ]; then
    echo "Adding agent2 to room $TOKEN"
    php occ talk:room:add --user agent2 "$TOKEN" || true

    echo "Seeding Talk chat messages..."
    
    send_msg() {
        local user=$1
        local msg=$2
        curl -s -u "${user}:agentpass" -X POST "http://127.0.0.1/ocs/v2.php/apps/spreed/api/v1/chat/$TOKEN" \
          -H "OCS-APIRequest: true" -H "Accept: application/json" -H "Content-Type: application/json" \
          -d "{\"message\":\"$msg\", \"replyTo\": 0}" > /dev/null || true
        sleep 1 # Ensure messages are ordered properly
    }

    send_msg "agent1" "Hey Agent 2, did you get a chance to look at the Q3 marketing report?"
    send_msg "agent2" "Yes I did! The numbers look solid, especially the user acquisition metrics."
    send_msg "agent1" "Agreed. We should highlight the social media campaign results in the upcoming board meeting."
    send_msg "agent2" "Makes sense. I'll prep a few slides for that. Do we have the final budget numbers from Finance yet?"
    send_msg "agent1" "Not yet, I pinged Sarah about it this morning. She said she'd have them by EOD."
    send_msg "agent2" "Okay, let's touch base tomorrow morning to finalize the deck."
    send_msg "agent1" "Sounds good. By the way, the client meeting got moved to next Thursday."
    send_msg "agent2" "Got it. I'll update my calendar. Thanks for the heads up!"
fi
