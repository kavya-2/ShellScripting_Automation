#!/bin/bash
version="1.2.3.4"
for line in $(cat jiraid.txt)
do
curl -X PUT -u " kavya.sivapal@gmail.com:ATATT3xFfGF0gE7B-yh8c3N7J9avNqs2SzR897GMaRheM5-95gU8TO2uUM5ZfmPwJxcsd9ktgyU8TSrjzIHcnwDmbDXUYrh7YOZ1jmWIpRtqSef7_961b9LxUkQ6n2xcXQyO30tzE44BPABSQye5MaXDhsfOST1WM7yJw4Xv8wMlM-y5uQhSukY=39A5EA2A" --data '{"update":{"labels":[{"add":"DEMO_NEW_BATCH3"}]}}' -H "Content-Type: application/json" https://kavya-99.atlassian.net/rest/api/3/issue/$line
done 
