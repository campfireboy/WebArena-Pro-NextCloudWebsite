#!/bin/bash
set -e
echo 'Seeding Calendar Events...'
DTSTART=$(date -d "next Monday 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Monday 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-0.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-0
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Weekly Goals
DESCRIPTION:Alignment on week deliverables.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-0.ics" --data-binary @"/tmp/sh1-0.ics" || true
DTSTART=$(date -d "next Tuesday 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Tuesday 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-1.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-1
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Project Sync
DESCRIPTION:Sync on upcoming milestones.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-1.ics" --data-binary @"/tmp/sh1-1.ics" || true
DTSTART=$(date -d "next Wednesday 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Wednesday 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-2.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-2
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Design Review
DESCRIPTION:Design prototype feedback.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-2.ics" --data-binary @"/tmp/sh1-2.ics" || true
DTSTART=$(date -d "next Thursday 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Thursday 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-3.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-3
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Client Update
DESCRIPTION:Prepare presentation materials.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-3.ics" --data-binary @"/tmp/sh1-3.ics" || true
DTSTART=$(date -d "next Friday 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Friday 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-4.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-4
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Retrospective
DESCRIPTION:End of week reflection.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-4.ics" --data-binary @"/tmp/sh1-4.ics" || true
DTSTART=$(date -d "next Monday + 1 week 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Monday + 1 week 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-5.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-5
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Weekly Goals
DESCRIPTION:Alignment on week deliverables.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-5.ics" --data-binary @"/tmp/sh1-5.ics" || true
DTSTART=$(date -d "next Tuesday + 1 week 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Tuesday + 1 week 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-6.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-6
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Engineering Standup
DESCRIPTION:Technical blockers.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-6.ics" --data-binary @"/tmp/sh1-6.ics" || true
DTSTART=$(date -d "next Wednesday + 1 week 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Wednesday + 1 week 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-7.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-7
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Marketing Overview
DESCRIPTION:Campaign tracking.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-7.ics" --data-binary @"/tmp/sh1-7.ics" || true
DTSTART=$(date -d "next Thursday + 1 week 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Thursday + 1 week 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-8.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-8
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Quarterly Planning
DESCRIPTION:Discussion for Q4.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-8.ics" --data-binary @"/tmp/sh1-8.ics" || true
DTSTART=$(date -d "next Friday + 1 week 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Friday + 1 week 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-9.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-9
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:All Hands
DESCRIPTION:Company wide meeting.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-9.ics" --data-binary @"/tmp/sh1-9.ics" || true
DTSTART=$(date -d "next Monday + 2 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Monday + 2 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-10.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-10
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Weekly Goals
DESCRIPTION:Alignment on week deliverables.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-10.ics" --data-binary @"/tmp/sh1-10.ics" || true
DTSTART=$(date -d "next Tuesday + 2 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Tuesday + 2 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-11.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-11
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Vendor Meeting
DESCRIPTION:Software license renewal.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-11.ics" --data-binary @"/tmp/sh1-11.ics" || true
DTSTART=$(date -d "next Wednesday + 2 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Wednesday + 2 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-12.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-12
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Security Audit
DESCRIPTION:IT Security overview.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-12.ics" --data-binary @"/tmp/sh1-12.ics" || true
DTSTART=$(date -d "next Thursday + 2 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Thursday + 2 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-13.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-13
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Budget Review
DESCRIPTION:Finance touchpoint.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-13.ics" --data-binary @"/tmp/sh1-13.ics" || true
DTSTART=$(date -d "next Friday + 2 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Friday + 2 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh1-14.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh1-14
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Team Offsite Prep
DESCRIPTION:Logistics for Q4.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/sh1-14.ics" --data-binary @"/tmp/sh1-14.ics" || true
DTSTART=$(date -d "next Monday 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Monday 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-0.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-0
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Weekly Goals
DESCRIPTION:Alignment on week deliverables.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-0.ics" --data-binary @"/tmp/sh2-0.ics" || true
DTSTART=$(date -d "next Tuesday 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Tuesday 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-1.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-1
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Project Sync
DESCRIPTION:Sync on upcoming milestones.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-1.ics" --data-binary @"/tmp/sh2-1.ics" || true
DTSTART=$(date -d "next Wednesday 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Wednesday 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-2.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-2
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Design Review
DESCRIPTION:Design prototype feedback.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-2.ics" --data-binary @"/tmp/sh2-2.ics" || true
DTSTART=$(date -d "next Thursday 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Thursday 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-3.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-3
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Client Update
DESCRIPTION:Prepare presentation materials.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-3.ics" --data-binary @"/tmp/sh2-3.ics" || true
DTSTART=$(date -d "next Friday 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Friday 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-4.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-4
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Retrospective
DESCRIPTION:End of week reflection.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-4.ics" --data-binary @"/tmp/sh2-4.ics" || true
DTSTART=$(date -d "next Monday + 1 week 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Monday + 1 week 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-5.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-5
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Weekly Goals
DESCRIPTION:Alignment on week deliverables.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-5.ics" --data-binary @"/tmp/sh2-5.ics" || true
DTSTART=$(date -d "next Tuesday + 1 week 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Tuesday + 1 week 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-6.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-6
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Engineering Standup
DESCRIPTION:Technical blockers.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-6.ics" --data-binary @"/tmp/sh2-6.ics" || true
DTSTART=$(date -d "next Wednesday + 1 week 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Wednesday + 1 week 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-7.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-7
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Marketing Overview
DESCRIPTION:Campaign tracking.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-7.ics" --data-binary @"/tmp/sh2-7.ics" || true
DTSTART=$(date -d "next Thursday + 1 week 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Thursday + 1 week 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-8.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-8
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Quarterly Planning
DESCRIPTION:Discussion for Q4.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-8.ics" --data-binary @"/tmp/sh2-8.ics" || true
DTSTART=$(date -d "next Friday + 1 week 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Friday + 1 week 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-9.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-9
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:All Hands
DESCRIPTION:Company wide meeting.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-9.ics" --data-binary @"/tmp/sh2-9.ics" || true
DTSTART=$(date -d "next Monday + 2 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Monday + 2 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-10.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-10
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Weekly Goals
DESCRIPTION:Alignment on week deliverables.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-10.ics" --data-binary @"/tmp/sh2-10.ics" || true
DTSTART=$(date -d "next Tuesday + 2 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Tuesday + 2 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-11.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-11
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Vendor Meeting
DESCRIPTION:Software license renewal.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-11.ics" --data-binary @"/tmp/sh2-11.ics" || true
DTSTART=$(date -d "next Wednesday + 2 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Wednesday + 2 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-12.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-12
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Security Audit
DESCRIPTION:IT Security overview.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-12.ics" --data-binary @"/tmp/sh2-12.ics" || true
DTSTART=$(date -d "next Thursday + 2 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Thursday + 2 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-13.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-13
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Budget Review
DESCRIPTION:Finance touchpoint.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-13.ics" --data-binary @"/tmp/sh2-13.ics" || true
DTSTART=$(date -d "next Friday + 2 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Friday + 2 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/sh2-14.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:sh2-14
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Team Offsite Prep
DESCRIPTION:Logistics for Q4.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/sh2-14.ics" --data-binary @"/tmp/sh2-14.ics" || true
DTSTART=$(date -d "next Monday + 3 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Monday + 3 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/a1-0.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:a1-0
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:1:1 Manager Sync
DESCRIPTION:Monthly check-in.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/a1-0.ics" --data-binary @"/tmp/a1-0.ics" || true
DTSTART=$(date -d "next Tuesday + 3 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Tuesday + 3 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/a1-1.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:a1-1
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Mentorship chat
DESCRIPTION:Coffee chat with junior dev.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/a1-1.ics" --data-binary @"/tmp/a1-1.ics" || true
DTSTART=$(date -d "next Wednesday + 3 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Wednesday + 3 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/a1-2.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:a1-2
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Architecture review
DESCRIPTION:Review new data models.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/a1-2.ics" --data-binary @"/tmp/a1-2.ics" || true
DTSTART=$(date -d "next Thursday + 3 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Thursday + 3 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/a1-3.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:a1-3
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Interviews
DESCRIPTION:Candidate screening.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/a1-3.ics" --data-binary @"/tmp/a1-3.ics" || true
DTSTART=$(date -d "next Friday + 3 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Friday + 3 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/a1-4.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:a1-4
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Focus time
DESCRIPTION:No meeting block.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent1/personal/a1-4.ics" --data-binary @"/tmp/a1-4.ics" || true
DTSTART=$(date -d "next Monday + 4 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Monday + 4 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/a2-0.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:a2-0
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:1:1 Director Sync
DESCRIPTION:Quarterly check-in.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/a2-0.ics" --data-binary @"/tmp/a2-0.ics" || true
DTSTART=$(date -d "next Tuesday + 4 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Tuesday + 4 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/a2-1.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:a2-1
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Performance review
DESCRIPTION:Self evaluation.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/a2-1.ics" --data-binary @"/tmp/a2-1.ics" || true
DTSTART=$(date -d "next Wednesday + 4 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Wednesday + 4 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/a2-2.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:a2-2
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Training workshop
DESCRIPTION:AWS certification.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/a2-2.ics" --data-binary @"/tmp/a2-2.ics" || true
DTSTART=$(date -d "next Thursday + 4 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Thursday + 4 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/a2-3.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:a2-3
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:External webinar
DESCRIPTION:Industry trends.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/a2-3.ics" --data-binary @"/tmp/a2-3.ics" || true
DTSTART=$(date -d "next Friday + 4 weeks 10:00:00" +%Y%m%dT%H%M%SZ)
DTEND=$(date -d "next Friday + 4 weeks 11:00:00" +%Y%m%dT%H%M%SZ)
DTSTAMP=$(date +%Y%m%dT%H%M%SZ)
cat << EOF > /tmp/a2-4.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Nextcloud Calendar//EN
BEGIN:VEVENT
UID:a2-4
DTSTAMP:${DTSTAMP}
DTSTART:${DTSTART}
DTEND:${DTEND}
SUMMARY:Focus time
DESCRIPTION:No meeting block.
END:VEVENT
END:VCALENDAR
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/calendars/agent2/personal/a2-4.ics" --data-binary @"/tmp/a2-4.ics" || true
