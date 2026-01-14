# GitHub User Lookup

This is a simple Ruby script that connects to the GitHub public API and displays GitHub user information.

## What it does

1. Fetches user data from the GitHub API.
2. Shows profile details such as name, bio, location, followers...
3. Gets and lists all public repos.

## Usage

```
ruby github_lookup.rb
```

## Demo

```
$ ruby github_lookup.rb 
Please enter a GitHub username to check: id-software

Retrieving data...

--------------------------------------------
 GitHub user: id-Software
 Name                    : id Software
 Company                 : N/A
 Location                : Richardson, TX
 Bio                     : N/A
 Profile URL             : https://github.com/id-Software
 Created at              : 2012-01-31T19:13:44Z
 Followers               : 4825
 Following               : 0
--------------------------------------------

id-Software has 20 public repos:

 Name                    : DOOM
 URL                     : https://github.com/id-Software/DOOM

 Name                    : DOOM-3
 URL                     : https://github.com/id-Software/DOOM-3

 Name                    : DOOM-3-BFG
 URL                     : https://github.com/id-Software/DOOM-3-BFG

 Name                    : DOOM-iOS
 URL                     : https://github.com/id-Software/DOOM-iOS

 Name                    : DOOM-IOS2
 URL                     : https://github.com/id-Software/DOOM-IOS2

 Name                    : Enemy-Territory
 URL                     : https://github.com/id-Software/Enemy-Territory

 Name                    : GtkRadiant
 URL                     : https://github.com/id-Software/GtkRadiant

 Name                    : idsetup
 URL                     : https://github.com/id-Software/idsetup

 Name                    : Quake
 URL                     : https://github.com/id-Software/Quake

 Name                    : Quake-2
 URL                     : https://github.com/id-Software/Quake-2

 Name                    : Quake-2-Tools
 URL                     : https://github.com/id-Software/Quake-2-Tools

 Name                    : Quake-III-Arena
 URL                     : https://github.com/id-Software/Quake-III-Arena

 Name                    : quake-rerelease-qc
 URL                     : https://github.com/id-Software/quake-rerelease-qc

 Name                    : Quake-Tools
 URL                     : https://github.com/id-Software/Quake-Tools

 Name                    : quake2-rerelease-dll
 URL                     : https://github.com/id-Software/quake2-rerelease-dll

 Name                    : RTCW-MP
 URL                     : https://github.com/id-Software/RTCW-MP

 Name                    : RTCW-SP
 URL                     : https://github.com/id-Software/RTCW-SP

 Name                    : wolf3d
 URL                     : https://github.com/id-Software/wolf3d

 Name                    : wolf3d-browser
 URL                     : https://github.com/id-Software/wolf3d-browser

 Name                    : Wolf3D-iOS
 URL                     : https://github.com/id-Software/Wolf3D-iOS
```

## 💻 System Requirements

- Ruby 2.5+

## API Used

GitHub public API:
https://api.github.com/users/{username}


DISCLAIMER: This tool was built for educational purposes and is intended for single-user lookups.
I am not responsible for misuse or improper usage of the GitHub API.