import os

seed_dir = "/Users/alexmiller/WebArena-Pro-NextCloudWebsite/seedDir"

# 20 shared contacts
shared_contacts = [
    ("Alex Johnson", "alex.j@example.com", "555-0101"),
    ("Maria Garcia", "maria.g@example.com", "555-0102"),
    ("James Smith", "james.s@example.com", "555-0103"),
    ("Linda Martinez", "linda.m@example.com", "555-0104"),
    ("Robert Brown", "robert.b@example.com", "555-0105"),
    ("Patricia Davis", "patricia.d@example.com", "555-0106"),
    ("Michael Miller", "michael.m@example.com", "555-0107"),
    ("Jennifer Wilson", "jennifer.w@example.com", "555-0108"),
    ("William Moore", "william.m@example.com", "555-0109"),
    ("Elizabeth Taylor", "elizabeth.t@example.com", "555-0110"),
    ("David Anderson", "david.a@example.com", "555-0111"),
    ("Barbara Thomas", "barbara.t@example.com", "555-0112"),
    ("Richard Jackson", "richard.j@example.com", "555-0113"),
    ("Susan White", "susan.w@example.com", "555-0114"),
    ("Joseph Harris", "joseph.h@example.com", "555-0115"),
    ("Jessica Martin", "jessica.m@example.com", "555-0116"),
    ("Thomas Thompson", "thomas.t@example.com", "555-0117"),
    ("Sarah Garcia", "sarah.g@example.com", "555-0118"),
    ("Charles Martinez", "charles.m@example.com", "555-0119"),
    ("Karen Robinson", "karen.r@example.com", "555-0120"),
]

# 10 agent 1
agent1_contacts = [
    ("Christopher Clark", "chris.c@example.com", "555-0201"),
    ("Nancy Rodriguez", "nancy.r@example.com", "555-0202"),
    ("Daniel Lewis", "daniel.l@example.com", "555-0203"),
    ("Lisa Lee", "lisa.l@example.com", "555-0204"),
    ("Matthew Walker", "matthew.w@example.com", "555-0205"),
    ("Betty Hall", "betty.h@example.com", "555-0206"),
    ("Anthony Allen", "anthony.a@example.com", "555-0207"),
    ("Margaret Young", "margaret.y@example.com", "555-0208"),
    ("Mark Hernandez", "mark.h@example.com", "555-0209"),
    ("Sandra King", "sandra.k@example.com", "555-0210"),
]

# 10 agent 2
agent2_contacts = [
    ("Donald Wright", "donald.w@example.com", "555-0301"),
    ("Ashley Lopez", "ashley.l@example.com", "555-0302"),
    ("Steven Hill", "steven.h@example.com", "555-0303"),
    ("Kimberly Scott", "kimberly.s@example.com", "555-0304"),
    ("Paul Green", "paul.g@example.com", "555-0305"),
    ("Emily Adams", "emily.a@example.com", "555-0306"),
    ("Andrew Baker", "andrew.b@example.com", "555-0307"),
    ("Donna Gonzalez", "donna.g@example.com", "555-0308"),
    ("Joshua Nelson", "joshua.n@example.com", "555-0309"),
    ("Carol Carter", "carol.c@example.com", "555-0310"),
]

# 15 Shared events
shared_events = [
    ("next Monday", "Weekly Goals", "Alignment on week deliverables."),
    ("next Tuesday", "Project Sync", "Sync on upcoming milestones."),
    ("next Wednesday", "Design Review", "Design prototype feedback."),
    ("next Thursday", "Client Update", "Prepare presentation materials."),
    ("next Friday", "Retrospective", "End of week reflection."),
    ("next Monday + 1 week", "Weekly Goals", "Alignment on week deliverables."),
    ("next Tuesday + 1 week", "Engineering Standup", "Technical blockers."),
    ("next Wednesday + 1 week", "Marketing Overview", "Campaign tracking."),
    ("next Thursday + 1 week", "Quarterly Planning", "Discussion for Q4."),
    ("next Friday + 1 week", "All Hands", "Company wide meeting."),
    ("next Monday + 2 weeks", "Weekly Goals", "Alignment on week deliverables."),
    ("next Tuesday + 2 weeks", "Vendor Meeting", "Software license renewal."),
    ("next Wednesday + 2 weeks", "Security Audit", "IT Security overview."),
    ("next Thursday + 2 weeks", "Budget Review", "Finance touchpoint."),
    ("next Friday + 2 weeks", "Team Offsite Prep", "Logistics for Q4."),
]

agent1_events = [
    ("next Monday + 3 weeks", "1:1 Manager Sync", "Monthly check-in."),
    ("next Tuesday + 3 weeks", "Mentorship chat", "Coffee chat with junior dev."),
    ("next Wednesday + 3 weeks", "Architecture review", "Review new data models."),
    ("next Thursday + 3 weeks", "Interviews", "Candidate screening."),
    ("next Friday + 3 weeks", "Focus time", "No meeting block."),
]

agent2_events = [
    ("next Monday + 4 weeks", "1:1 Director Sync", "Quarterly check-in."),
    ("next Tuesday + 4 weeks", "Performance review", "Self evaluation."),
    ("next Wednesday + 4 weeks", "Training workshop", "AWS certification."),
    ("next Thursday + 4 weeks", "External webinar", "Industry trends."),
    ("next Friday + 4 weeks", "Focus time", "No meeting block."),
]

with open(os.path.join(seed_dir, "contacts.sh"), "w") as f:
    f.write("#!/bin/bash\nset -e\necho 'Seeding Contacts...'\n")
    
    def render_contacts(contacts, user, prefix):
        for i, c in enumerate(contacts):
            uid = f"{prefix}-{i}"
            vcf = f"""BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:{uid}
FN:{c[0]}
N:{c[0].split()[-1]};{c[0].split()[0]};;;
EMAIL;TYPE=INTERNET:{c[1]}
TEL;TYPE=CELL:{c[2]}
END:VCARD"""
            # To avoid issues with quotes, write to a temp file
            f.write(f"cat << EOF > /tmp/{uid}.vcf\n{vcf}\nEOF\n")
            f.write(f"curl -s -u {user}:agentpass -X PUT \"http://127.0.0.1/remote.php/dav/addressbooks/users/{user}/contacts/{uid}.vcf\" --data-binary @\"/tmp/{uid}.vcf\" || true\n")

    render_contacts(shared_contacts, "agent1", "sh1")
    render_contacts(shared_contacts, "agent2", "sh2")
    render_contacts(agent1_contacts, "agent1", "a1")
    render_contacts(agent2_contacts, "agent2", "a2")

with open(os.path.join(seed_dir, "calendar.sh"), "w") as f:
    f.write("#!/bin/bash\nset -e\necho 'Seeding Calendar Events...'\n")

    def render_events(events, user, prefix):
        for i, ev in enumerate(events):
            uid = f"{prefix}-{i}"
            f.write(f'DTSTART=$(date -d "{ev[0]} 10:00:00" +%Y%m%dT%H%M%SZ)\n')
            f.write(f'DTEND=$(date -d "{ev[0]} 11:00:00" +%Y%m%dT%H%M%SZ)\n')
            f.write(f'DTSTAMP=$(date +%Y%m%dT%H%M%SZ)\n')

            ics = f"""BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:{uid}
DTSTAMP:${{DTSTAMP}}
DTSTART:${{DTSTART}}
DTEND:${{DTEND}}
SUMMARY:{ev[1]}
DESCRIPTION:{ev[2]}
END:VEVENT
END:VCALENDAR"""
            f.write(f"cat << EOF > /tmp/{uid}.ics\n{ics}\nEOF\n")
            f.write(f"curl -s -u {user}:agentpass -X PUT \"http://127.0.0.1/remote.php/dav/calendars/{user}/personal/{uid}.ics\" --data-binary @\"/tmp/{uid}.ics\" || true\n")

    render_events(shared_events, "agent1", "sh1")
    render_events(shared_events, "agent2", "sh2")
    render_events(agent1_events, "agent1", "a1")
    render_events(agent2_events, "agent2", "a2")

talk_script = '''#!/bin/bash
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
        curl -s -u "${user}:agentpass" -X POST "http://127.0.0.1/ocs/v2.php/apps/spreed/api/v1/chat/$TOKEN" \\
          -H "OCS-APIRequest: true" -H "Accept: application/json" -H "Content-Type: application/json" \\
          -d "{\\"message\\":\\"$msg\\", \\"replyTo\\": 0}" > /dev/null || true
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
'''
with open(os.path.join(seed_dir, "talk.sh"), "w") as f:
    f.write(talk_script)
