#!/usr/bin/env bash

PROJECT_NAME=$1
FLAVOR=$2

#Function to create svelte project and show output text
svinstall () {
	npx degit $1 $2 &> /dev/null #hides console output from command
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

# Install Svelte based on whichever flavor you want
if [[ $FLAVOR == "" ]]; then
	# Vanilla Svelte App
	svinstall 'sveltejs/template' $PROJECT_NAME
elif [[ $FLAVOR == "SCSS" ]]; then 
	# Svelte + SCSS 
	svinstall 'yajatvishwak/SvelteSCSS' $PROJECT_NAME
elif [[ $FLAVOR == "Express" ]]; then 
	# Svelte + ExpressJS + SCSS
	svinstall 'synapsecode/SvelteExpress' $PROJECT_NAME
elif [[ $FLAVOR == "Tailwind" ]]; then 
	# Svelte + TailwindCSS
	svinstall 'synapsecode/Svelte-TailwindTemplate' $PROJECT_NAME
else
	echo "❌ Invalid Svelte Flavor"
fi

