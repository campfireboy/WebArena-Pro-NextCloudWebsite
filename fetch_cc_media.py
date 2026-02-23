import os
import requests
import json
import urllib.request
import shutil

BASE_DIR = "/Users/alexmiller/WebArena-Pro-NextCloudWebsite"

# Folders to populate
MEDIA_DIR_1 = os.path.join(BASE_DIR, "media/agent1")
MEDIA_DIR_2 = os.path.join(BASE_DIR, "media/agent2")
LICENSE_DIR_1 = os.path.join(BASE_DIR, "license/agent1")
LICENSE_DIR_2 = os.path.join(BASE_DIR, "license/agent2")

def download_cc_media(query, media_type, count, target_media_dir, target_license_dir):
    os.makedirs(target_media_dir, exist_ok=True)
    os.makedirs(target_license_dir, exist_ok=True)
    
    print(f"Fetching {count} {media_type}s for '{query}'...")
    url = f"https://api.openverse.org/v1/{media_type}/?q={query}&page_size={count}"
    headers = {'User-Agent': 'NextcloudSeeder/1.0'}
    
    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        print(f"Failed to fetch {media_type} APIs")
        return

    data = response.json()
    results = data.get("results", [])
    
    for i, item in enumerate(results):
        title = item.get("title", f"{query}_{i}")
        # Sanitize filename
        safe_title = "".join(x for x in title if x.isalnum() or x in "._-").strip()
        if not safe_title:
            safe_title = f"{query}_{i}"
            
        file_url = item.get("url")
        if not file_url:
            continue
            
        # Determine extension from URL or default
        ext = file_url.split(".")[-1].lower()
        if media_type == 'images' and ext not in ['jpg', 'jpeg', 'png', 'svg']:
            ext = 'jpg'
        elif media_type == 'audio' and ext not in ['mp3', 'wav', 'ogg']:
            ext = 'mp3'
            
        filename = f"{safe_title}.{ext}"
        media_path = os.path.join(target_media_dir, filename)
        license_path = os.path.join(target_license_dir, f"{safe_title}_license.txt")
        
        try:
            # Download file
            print(f"Downloading {filename}...")
            req = urllib.request.Request(file_url, headers=headers)
            with urllib.request.urlopen(req) as resp, open(media_path, 'wb') as out_file:
                out_file.write(resp.read())
                
            # Write license
            creator = item.get("creator", "Unknown")
            license_type = item.get("license", "Unknown")
            license_version = item.get("license_version", "")
            license_url = item.get("license_url", "No URL provided")
            
            with open(license_path, "w") as f:
                f.write(f"Title: {title}\n")
                f.write(f"Creator: {creator}\n")
                f.write(f"License: CC {license_type.upper()} {license_version}\n")
                f.write(f"License URL: {license_url}\n")
                f.write(f"Source URL: {item.get('foreign_landing_url', file_url)}\n")
        except Exception as e:
            print(f"Error downloading {filename}: {e}")

# Generate text work documents
def generate_work_docs(docs, target_media_dir, target_license_dir):
    os.makedirs(target_media_dir, exist_ok=True)
    os.makedirs(target_license_dir, exist_ok=True)
    print(f"Generating work documents in {target_media_dir}...")
    
    for filename, content in docs.items():
        media_path = os.path.join(target_media_dir, filename)
        license_path = os.path.join(target_license_dir, f"{filename}_license.txt")
        
        with open(media_path, "w") as f:
            f.write(content)
            
        with open(license_path, "w") as f:
            f.write(f"Title: {filename}\n")
            f.write("Creator: Nextcloud Generator Script\n")
            f.write("License: CC0 1.0 Universal (Public Domain)\n")
            f.write("License URL: https://creativecommons.org/publicdomain/zero/1.0/\n")

# Clean up old agent2 directories
agent2_safari_media = os.path.join(MEDIA_DIR_2, "safari")
agent2_safari_license = os.path.join(LICENSE_DIR_2, "safari")
if os.path.exists(agent2_safari_media):
    shutil.rmtree(agent2_safari_media)
if os.path.exists(agent2_safari_license):
    shutil.rmtree(agent2_safari_license)

agent1_docs = {
    "Q3_Budget.csv": "Department,Q1,Q2,Q3\nMarketing,50000,55000,60000\nSales,100000,110000,120000\nEngineering,150000,165000,180000\n",
    "Project_Alpha_Notes.txt": "Project Alpha Kickoff Notes\n- Need to finalize API endpoints\n- UI mockups due by Friday\n- Database schema migrating to PostgreSQL\n",
    "Employee_Handbook_Draft.md": "# Employee Handbook Draft\n## 1. Introduction\nWelcome to the team!\n## 2. Core Hours\n10AM to 4PM local time.\n## 3. Benefits\nPlease refer to the HR portal for full details.",
    "Server_Logs_Sample.txt": "2026-03-01 10:05:00 INFO Connection established from 192.168.1.100\n2026-03-01 10:05:05 WARN High memory usage detected on node-A\n2026-03-01 10:06:00 ERROR Failed to write to database /var/data/main.db\n",
    "Social_Media_Copy.txt": "Tweet 1: Announcing our new feature! #tech #startup\nTweet 2: Join us at the conference next week! Register here: link.com\n"
}

agent2_docs = {
    "Design_System_V2.md": "# Design System v2 Updates\n- Standardized button border radius to 8px.\n- Updated primary color hex to #2E5BFF.\n- Added new dark mode responsive variants.\n",
    "Marketing_Campaign_Q4.csv": "Channel,Budget,Target_Reach,Status\nSocial Media,$15000,500K,Active\nEmail,$5000,100K,DraftING\nSearch Sponsored,$20000,2M,Approved\n",
    "Freelance_Invoice_Template.txt": "INVOICE #0045\nDate: 2026-04-12\n\nServices Rendered: Logo Redesign & Branding Package\nHours: 25\nRate: $85/hr\nTotal Due: $2,125.00\n\nPlease remit payment within 30 days.\n",
    "Music_Collab_Ideas.txt": "Potential collabs for the EP:\n- DJ Shadow (reach out on twitter)\n- Local synth club guys\n- Need a good vocalist for track 3 (maybe Sarah?)\n",
    "Weekly_Status_Report.md": "## Weekly Status: Week of Oct 12\n**Completed:**\n- Finalized landing page hero image.\n- Set up Google Analytics tracking.\n**Blocked:**\n- Waiting on legal approval for terms of service changes."
}

# Execute
print("--- Agent 1 ---")
download_cc_media("safari", "images", 5, os.path.join(MEDIA_DIR_1, "safari"), os.path.join(LICENSE_DIR_1, "safari"))
download_cc_media("safari", "audio", 3, os.path.join(MEDIA_DIR_1, "safari"), os.path.join(LICENSE_DIR_1, "safari"))
generate_work_docs(agent1_docs, os.path.join(MEDIA_DIR_1, "work"), os.path.join(LICENSE_DIR_1, "work"))

print("\n--- Agent 2 ---")
download_cc_media("europe trip", "images", 5, os.path.join(MEDIA_DIR_2, "europe_trip"), os.path.join(LICENSE_DIR_2, "europe_trip"))
download_cc_media("electronic music", "audio", 3, os.path.join(MEDIA_DIR_2, "production"), os.path.join(LICENSE_DIR_2, "production"))
generate_work_docs(agent2_docs, os.path.join(MEDIA_DIR_2, "work"), os.path.join(LICENSE_DIR_2, "work"))

print("Finished fetching media and generating docs!")
