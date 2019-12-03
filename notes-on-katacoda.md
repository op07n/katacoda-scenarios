# Notes on generating katacoda content

## Notes of Katacoda Markdown

`cmd`{{ excute}}   # excute cmd

`echo "hello world"`{{ copy }}   # copy to the clipboard

to stop a long running cmd, just send a cmd using {{execute}}   eg echo or clear

<kbd>Ctrl</kbd>+<kbd>C</kbd>  # to show a style of a box

when using the terminal-terminal layout use

`cmd`{{ execute HOST1}}    or {{execute HOST2}}

for terminal windowws
`cmd`{{ execute T1}}

to add images in md:
![Katacoda Logo](/scenario-examples/scenarios/displaying-images/assets/logo-text-with-head.png)
url is the repo path


## Dashboards and Terminal tabs
Add  a terminal tab with:
"environment": {
  "terminals": [{"name": "Terminal 2", "target": "host01"}]
}

dashboard are the tabs that run along  the top with the terminal tabs, edit the index.json file:
"environment": {
    "showdashboard": true,
    "dashboards": [{"name": "URL", "href": "https://www.google.co.uk"},
        {"name": "Port 80", "port": 80},
        {"name": "Placeholder", "href": "https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com"}]
}


and to run a tab with a cmd:
"environment": {
  "terminals": [{"name": "Docker Stats", "command": "docker stats", "target": "host01"}]
}

## Files
To upload and use files
Create files in the scenario folder /assets
Max is 1Mb with this method, other wise use curl to download (eg S3)

And add to the index.json file (at the JSON root, with the steps):
"details": {
    "assets": {
        "host01": [
            {"file": "wait.sh", "target": "/usr/local/bin/", "chmod": "+x"},
            {"file": "deploy.sh", "target": "/usr/local/bin/", "chmod": "+x"}
        ]
    }
},


## Add questions
requires all to be answered correctly before advancing

>>Q1: Enter the extract string test<<
=== test

>>Q2: Enter the string containing test<<
=~= test

>>Q3: Multiple Choice <<
[*] Correct
[*] Correct
[ ] Incorrect

>>Q4: Single Choice <<
(*) Correct
( ) Incorrect
