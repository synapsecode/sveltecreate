#!/usr/bin/env bash

PROJECT_NAME=$1
MODE=$2

#Function to create svelte project and show output text
svinstall () {
	npx degit $1 $2
	echo "🟢 Created Svelte Template..."
	cd $2
	echo "🟢 Installing Dependencies..."
	npm install &> /dev/null #hides console output from command
	cd ..
	echo "🎉 Svelte Project '$2' Created Successfully! 🎉"
}


# Check for Empty Project name
if [[ $PROJECT_NAME == "" ]]; then
	echo "❌ error: project name must not be empty!"
	exit 0
fi

# Install Svelte based on whichever mode you want
if [[ $MODE == "" ]]; then
	# Regular Svelte App
	svinstall 'sveltejs/template' $PROJECT_NAME
elif [[ $MODE == "SCSS" ]]; then 
	# Svelte + SCSS 
	svinstall 'yajatvishwak/SvelteSCSS' $PROJECT_NAME
elif [[ $MODE == "Express" ]]; then 
	# Svelte + ExpressJS + SCSS
	svinstall 'synapsecode/SvelteExpress' $PROJECT_NAME
else
	echo "❌ Invalid Mode"
fi

