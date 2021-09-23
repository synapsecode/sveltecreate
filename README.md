# SvelteCreate (SVC)
A Bash CLI Tool to easily create different kinds of Svelte apps based on your requirements. 

## Installation
- Save this bash file to any directory
- open your ~/.zshrc and make a new alias like this: ```alias svc="YourSaveDirectory/svc.sh"```
- Close your terminal and reopen it or type: ```source ~/.zshrc```
- Done! Now you can use the svc command from anywhere on your terminal

## Usage
```svc [PROJECT_NAME] [MODE]```

(If mode is not passed, svc will create a default Svelte application)

Available Modes:
- ```SCSS``` (Creates a Svelte Project with SCSS)
- ```Express``` (Creates a Svelte Project coupled with ExpressJS & SCSS)

