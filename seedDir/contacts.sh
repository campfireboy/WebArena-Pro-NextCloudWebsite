#!/bin/bash
set -e
echo 'Seeding Contacts...'
cat << EOF > /tmp/sh1-0.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-0
FN:Alex Johnson
N:Johnson;Alex;;;
EMAIL;TYPE=INTERNET:alex.j@example.com
TEL;TYPE=CELL:555-0101
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-0.vcf" --data-binary @"/tmp/sh1-0.vcf" || true
cat << EOF > /tmp/sh1-1.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-1
FN:Maria Garcia
N:Garcia;Maria;;;
EMAIL;TYPE=INTERNET:maria.g@example.com
TEL;TYPE=CELL:555-0102
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-1.vcf" --data-binary @"/tmp/sh1-1.vcf" || true
cat << EOF > /tmp/sh1-2.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-2
FN:James Smith
N:Smith;James;;;
EMAIL;TYPE=INTERNET:james.s@example.com
TEL;TYPE=CELL:555-0103
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-2.vcf" --data-binary @"/tmp/sh1-2.vcf" || true
cat << EOF > /tmp/sh1-3.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-3
FN:Linda Martinez
N:Martinez;Linda;;;
EMAIL;TYPE=INTERNET:linda.m@example.com
TEL;TYPE=CELL:555-0104
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-3.vcf" --data-binary @"/tmp/sh1-3.vcf" || true
cat << EOF > /tmp/sh1-4.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-4
FN:Robert Brown
N:Brown;Robert;;;
EMAIL;TYPE=INTERNET:robert.b@example.com
TEL;TYPE=CELL:555-0105
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-4.vcf" --data-binary @"/tmp/sh1-4.vcf" || true
cat << EOF > /tmp/sh1-5.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-5
FN:Patricia Davis
N:Davis;Patricia;;;
EMAIL;TYPE=INTERNET:patricia.d@example.com
TEL;TYPE=CELL:555-0106
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-5.vcf" --data-binary @"/tmp/sh1-5.vcf" || true
cat << EOF > /tmp/sh1-6.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-6
FN:Michael Miller
N:Miller;Michael;;;
EMAIL;TYPE=INTERNET:michael.m@example.com
TEL;TYPE=CELL:555-0107
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-6.vcf" --data-binary @"/tmp/sh1-6.vcf" || true
cat << EOF > /tmp/sh1-7.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-7
FN:Jennifer Wilson
N:Wilson;Jennifer;;;
EMAIL;TYPE=INTERNET:jennifer.w@example.com
TEL;TYPE=CELL:555-0108
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-7.vcf" --data-binary @"/tmp/sh1-7.vcf" || true
cat << EOF > /tmp/sh1-8.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-8
FN:William Moore
N:Moore;William;;;
EMAIL;TYPE=INTERNET:william.m@example.com
TEL;TYPE=CELL:555-0109
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-8.vcf" --data-binary @"/tmp/sh1-8.vcf" || true
cat << EOF > /tmp/sh1-9.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-9
FN:Elizabeth Taylor
N:Taylor;Elizabeth;;;
EMAIL;TYPE=INTERNET:elizabeth.t@example.com
TEL;TYPE=CELL:555-0110
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-9.vcf" --data-binary @"/tmp/sh1-9.vcf" || true
cat << EOF > /tmp/sh1-10.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-10
FN:David Anderson
N:Anderson;David;;;
EMAIL;TYPE=INTERNET:david.a@example.com
TEL;TYPE=CELL:555-0111
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-10.vcf" --data-binary @"/tmp/sh1-10.vcf" || true
cat << EOF > /tmp/sh1-11.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-11
FN:Barbara Thomas
N:Thomas;Barbara;;;
EMAIL;TYPE=INTERNET:barbara.t@example.com
TEL;TYPE=CELL:555-0112
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-11.vcf" --data-binary @"/tmp/sh1-11.vcf" || true
cat << EOF > /tmp/sh1-12.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-12
FN:Richard Jackson
N:Jackson;Richard;;;
EMAIL;TYPE=INTERNET:richard.j@example.com
TEL;TYPE=CELL:555-0113
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-12.vcf" --data-binary @"/tmp/sh1-12.vcf" || true
cat << EOF > /tmp/sh1-13.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-13
FN:Susan White
N:White;Susan;;;
EMAIL;TYPE=INTERNET:susan.w@example.com
TEL;TYPE=CELL:555-0114
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-13.vcf" --data-binary @"/tmp/sh1-13.vcf" || true
cat << EOF > /tmp/sh1-14.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-14
FN:Joseph Harris
N:Harris;Joseph;;;
EMAIL;TYPE=INTERNET:joseph.h@example.com
TEL;TYPE=CELL:555-0115
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-14.vcf" --data-binary @"/tmp/sh1-14.vcf" || true
cat << EOF > /tmp/sh1-15.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-15
FN:Jessica Martin
N:Martin;Jessica;;;
EMAIL;TYPE=INTERNET:jessica.m@example.com
TEL;TYPE=CELL:555-0116
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-15.vcf" --data-binary @"/tmp/sh1-15.vcf" || true
cat << EOF > /tmp/sh1-16.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-16
FN:Thomas Thompson
N:Thompson;Thomas;;;
EMAIL;TYPE=INTERNET:thomas.t@example.com
TEL;TYPE=CELL:555-0117
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-16.vcf" --data-binary @"/tmp/sh1-16.vcf" || true
cat << EOF > /tmp/sh1-17.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-17
FN:Sarah Garcia
N:Garcia;Sarah;;;
EMAIL;TYPE=INTERNET:sarah.g@example.com
TEL;TYPE=CELL:555-0118
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-17.vcf" --data-binary @"/tmp/sh1-17.vcf" || true
cat << EOF > /tmp/sh1-18.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-18
FN:Charles Martinez
N:Martinez;Charles;;;
EMAIL;TYPE=INTERNET:charles.m@example.com
TEL;TYPE=CELL:555-0119
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-18.vcf" --data-binary @"/tmp/sh1-18.vcf" || true
cat << EOF > /tmp/sh1-19.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh1-19
FN:Karen Robinson
N:Robinson;Karen;;;
EMAIL;TYPE=INTERNET:karen.r@example.com
TEL;TYPE=CELL:555-0120
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/sh1-19.vcf" --data-binary @"/tmp/sh1-19.vcf" || true
cat << EOF > /tmp/sh2-0.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-0
FN:Alex Johnson
N:Johnson;Alex;;;
EMAIL;TYPE=INTERNET:alex.j@example.com
TEL;TYPE=CELL:555-0101
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-0.vcf" --data-binary @"/tmp/sh2-0.vcf" || true
cat << EOF > /tmp/sh2-1.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-1
FN:Maria Garcia
N:Garcia;Maria;;;
EMAIL;TYPE=INTERNET:maria.g@example.com
TEL;TYPE=CELL:555-0102
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-1.vcf" --data-binary @"/tmp/sh2-1.vcf" || true
cat << EOF > /tmp/sh2-2.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-2
FN:James Smith
N:Smith;James;;;
EMAIL;TYPE=INTERNET:james.s@example.com
TEL;TYPE=CELL:555-0103
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-2.vcf" --data-binary @"/tmp/sh2-2.vcf" || true
cat << EOF > /tmp/sh2-3.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-3
FN:Linda Martinez
N:Martinez;Linda;;;
EMAIL;TYPE=INTERNET:linda.m@example.com
TEL;TYPE=CELL:555-0104
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-3.vcf" --data-binary @"/tmp/sh2-3.vcf" || true
cat << EOF > /tmp/sh2-4.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-4
FN:Robert Brown
N:Brown;Robert;;;
EMAIL;TYPE=INTERNET:robert.b@example.com
TEL;TYPE=CELL:555-0105
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-4.vcf" --data-binary @"/tmp/sh2-4.vcf" || true
cat << EOF > /tmp/sh2-5.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-5
FN:Patricia Davis
N:Davis;Patricia;;;
EMAIL;TYPE=INTERNET:patricia.d@example.com
TEL;TYPE=CELL:555-0106
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-5.vcf" --data-binary @"/tmp/sh2-5.vcf" || true
cat << EOF > /tmp/sh2-6.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-6
FN:Michael Miller
N:Miller;Michael;;;
EMAIL;TYPE=INTERNET:michael.m@example.com
TEL;TYPE=CELL:555-0107
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-6.vcf" --data-binary @"/tmp/sh2-6.vcf" || true
cat << EOF > /tmp/sh2-7.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-7
FN:Jennifer Wilson
N:Wilson;Jennifer;;;
EMAIL;TYPE=INTERNET:jennifer.w@example.com
TEL;TYPE=CELL:555-0108
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-7.vcf" --data-binary @"/tmp/sh2-7.vcf" || true
cat << EOF > /tmp/sh2-8.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-8
FN:William Moore
N:Moore;William;;;
EMAIL;TYPE=INTERNET:william.m@example.com
TEL;TYPE=CELL:555-0109
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-8.vcf" --data-binary @"/tmp/sh2-8.vcf" || true
cat << EOF > /tmp/sh2-9.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-9
FN:Elizabeth Taylor
N:Taylor;Elizabeth;;;
EMAIL;TYPE=INTERNET:elizabeth.t@example.com
TEL;TYPE=CELL:555-0110
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-9.vcf" --data-binary @"/tmp/sh2-9.vcf" || true
cat << EOF > /tmp/sh2-10.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-10
FN:David Anderson
N:Anderson;David;;;
EMAIL;TYPE=INTERNET:david.a@example.com
TEL;TYPE=CELL:555-0111
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-10.vcf" --data-binary @"/tmp/sh2-10.vcf" || true
cat << EOF > /tmp/sh2-11.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-11
FN:Barbara Thomas
N:Thomas;Barbara;;;
EMAIL;TYPE=INTERNET:barbara.t@example.com
TEL;TYPE=CELL:555-0112
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-11.vcf" --data-binary @"/tmp/sh2-11.vcf" || true
cat << EOF > /tmp/sh2-12.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-12
FN:Richard Jackson
N:Jackson;Richard;;;
EMAIL;TYPE=INTERNET:richard.j@example.com
TEL;TYPE=CELL:555-0113
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-12.vcf" --data-binary @"/tmp/sh2-12.vcf" || true
cat << EOF > /tmp/sh2-13.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-13
FN:Susan White
N:White;Susan;;;
EMAIL;TYPE=INTERNET:susan.w@example.com
TEL;TYPE=CELL:555-0114
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-13.vcf" --data-binary @"/tmp/sh2-13.vcf" || true
cat << EOF > /tmp/sh2-14.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-14
FN:Joseph Harris
N:Harris;Joseph;;;
EMAIL;TYPE=INTERNET:joseph.h@example.com
TEL;TYPE=CELL:555-0115
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-14.vcf" --data-binary @"/tmp/sh2-14.vcf" || true
cat << EOF > /tmp/sh2-15.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-15
FN:Jessica Martin
N:Martin;Jessica;;;
EMAIL;TYPE=INTERNET:jessica.m@example.com
TEL;TYPE=CELL:555-0116
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-15.vcf" --data-binary @"/tmp/sh2-15.vcf" || true
cat << EOF > /tmp/sh2-16.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-16
FN:Thomas Thompson
N:Thompson;Thomas;;;
EMAIL;TYPE=INTERNET:thomas.t@example.com
TEL;TYPE=CELL:555-0117
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-16.vcf" --data-binary @"/tmp/sh2-16.vcf" || true
cat << EOF > /tmp/sh2-17.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-17
FN:Sarah Garcia
N:Garcia;Sarah;;;
EMAIL;TYPE=INTERNET:sarah.g@example.com
TEL;TYPE=CELL:555-0118
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-17.vcf" --data-binary @"/tmp/sh2-17.vcf" || true
cat << EOF > /tmp/sh2-18.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-18
FN:Charles Martinez
N:Martinez;Charles;;;
EMAIL;TYPE=INTERNET:charles.m@example.com
TEL;TYPE=CELL:555-0119
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-18.vcf" --data-binary @"/tmp/sh2-18.vcf" || true
cat << EOF > /tmp/sh2-19.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:sh2-19
FN:Karen Robinson
N:Robinson;Karen;;;
EMAIL;TYPE=INTERNET:karen.r@example.com
TEL;TYPE=CELL:555-0120
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/sh2-19.vcf" --data-binary @"/tmp/sh2-19.vcf" || true
cat << EOF > /tmp/a1-0.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a1-0
FN:Christopher Clark
N:Clark;Christopher;;;
EMAIL;TYPE=INTERNET:chris.c@example.com
TEL;TYPE=CELL:555-0201
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/a1-0.vcf" --data-binary @"/tmp/a1-0.vcf" || true
cat << EOF > /tmp/a1-1.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a1-1
FN:Nancy Rodriguez
N:Rodriguez;Nancy;;;
EMAIL;TYPE=INTERNET:nancy.r@example.com
TEL;TYPE=CELL:555-0202
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/a1-1.vcf" --data-binary @"/tmp/a1-1.vcf" || true
cat << EOF > /tmp/a1-2.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a1-2
FN:Daniel Lewis
N:Lewis;Daniel;;;
EMAIL;TYPE=INTERNET:daniel.l@example.com
TEL;TYPE=CELL:555-0203
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/a1-2.vcf" --data-binary @"/tmp/a1-2.vcf" || true
cat << EOF > /tmp/a1-3.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a1-3
FN:Lisa Lee
N:Lee;Lisa;;;
EMAIL;TYPE=INTERNET:lisa.l@example.com
TEL;TYPE=CELL:555-0204
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/a1-3.vcf" --data-binary @"/tmp/a1-3.vcf" || true
cat << EOF > /tmp/a1-4.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a1-4
FN:Matthew Walker
N:Walker;Matthew;;;
EMAIL;TYPE=INTERNET:matthew.w@example.com
TEL;TYPE=CELL:555-0205
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/a1-4.vcf" --data-binary @"/tmp/a1-4.vcf" || true
cat << EOF > /tmp/a1-5.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a1-5
FN:Betty Hall
N:Hall;Betty;;;
EMAIL;TYPE=INTERNET:betty.h@example.com
TEL;TYPE=CELL:555-0206
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/a1-5.vcf" --data-binary @"/tmp/a1-5.vcf" || true
cat << EOF > /tmp/a1-6.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a1-6
FN:Anthony Allen
N:Allen;Anthony;;;
EMAIL;TYPE=INTERNET:anthony.a@example.com
TEL;TYPE=CELL:555-0207
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/a1-6.vcf" --data-binary @"/tmp/a1-6.vcf" || true
cat << EOF > /tmp/a1-7.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a1-7
FN:Margaret Young
N:Young;Margaret;;;
EMAIL;TYPE=INTERNET:margaret.y@example.com
TEL;TYPE=CELL:555-0208
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/a1-7.vcf" --data-binary @"/tmp/a1-7.vcf" || true
cat << EOF > /tmp/a1-8.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a1-8
FN:Mark Hernandez
N:Hernandez;Mark;;;
EMAIL;TYPE=INTERNET:mark.h@example.com
TEL;TYPE=CELL:555-0209
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/a1-8.vcf" --data-binary @"/tmp/a1-8.vcf" || true
cat << EOF > /tmp/a1-9.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a1-9
FN:Sandra King
N:King;Sandra;;;
EMAIL;TYPE=INTERNET:sandra.k@example.com
TEL;TYPE=CELL:555-0210
END:VCARD
EOF
curl -s -u agent1:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent1/contacts/a1-9.vcf" --data-binary @"/tmp/a1-9.vcf" || true
cat << EOF > /tmp/a2-0.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a2-0
FN:Donald Wright
N:Wright;Donald;;;
EMAIL;TYPE=INTERNET:donald.w@example.com
TEL;TYPE=CELL:555-0301
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/a2-0.vcf" --data-binary @"/tmp/a2-0.vcf" || true
cat << EOF > /tmp/a2-1.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a2-1
FN:Ashley Lopez
N:Lopez;Ashley;;;
EMAIL;TYPE=INTERNET:ashley.l@example.com
TEL;TYPE=CELL:555-0302
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/a2-1.vcf" --data-binary @"/tmp/a2-1.vcf" || true
cat << EOF > /tmp/a2-2.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a2-2
FN:Steven Hill
N:Hill;Steven;;;
EMAIL;TYPE=INTERNET:steven.h@example.com
TEL;TYPE=CELL:555-0303
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/a2-2.vcf" --data-binary @"/tmp/a2-2.vcf" || true
cat << EOF > /tmp/a2-3.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a2-3
FN:Kimberly Scott
N:Scott;Kimberly;;;
EMAIL;TYPE=INTERNET:kimberly.s@example.com
TEL;TYPE=CELL:555-0304
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/a2-3.vcf" --data-binary @"/tmp/a2-3.vcf" || true
cat << EOF > /tmp/a2-4.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a2-4
FN:Paul Green
N:Green;Paul;;;
EMAIL;TYPE=INTERNET:paul.g@example.com
TEL;TYPE=CELL:555-0305
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/a2-4.vcf" --data-binary @"/tmp/a2-4.vcf" || true
cat << EOF > /tmp/a2-5.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a2-5
FN:Emily Adams
N:Adams;Emily;;;
EMAIL;TYPE=INTERNET:emily.a@example.com
TEL;TYPE=CELL:555-0306
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/a2-5.vcf" --data-binary @"/tmp/a2-5.vcf" || true
cat << EOF > /tmp/a2-6.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a2-6
FN:Andrew Baker
N:Baker;Andrew;;;
EMAIL;TYPE=INTERNET:andrew.b@example.com
TEL;TYPE=CELL:555-0307
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/a2-6.vcf" --data-binary @"/tmp/a2-6.vcf" || true
cat << EOF > /tmp/a2-7.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a2-7
FN:Donna Gonzalez
N:Gonzalez;Donna;;;
EMAIL;TYPE=INTERNET:donna.g@example.com
TEL;TYPE=CELL:555-0308
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/a2-7.vcf" --data-binary @"/tmp/a2-7.vcf" || true
cat << EOF > /tmp/a2-8.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a2-8
FN:Joshua Nelson
N:Nelson;Joshua;;;
EMAIL;TYPE=INTERNET:joshua.n@example.com
TEL;TYPE=CELL:555-0309
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/a2-8.vcf" --data-binary @"/tmp/a2-8.vcf" || true
cat << EOF > /tmp/a2-9.vcf
BEGIN:VCARD
VERSION:3.0
PRODID:-//Nextcloud Contacts v5.1.0-alpha.3
UID:a2-9
FN:Carol Carter
N:Carter;Carol;;;
EMAIL;TYPE=INTERNET:carol.c@example.com
TEL;TYPE=CELL:555-0310
END:VCARD
EOF
curl -s -u agent2:agentpass -X PUT "http://127.0.0.1/remote.php/dav/addressbooks/users/agent2/contacts/a2-9.vcf" --data-binary @"/tmp/a2-9.vcf" || true
