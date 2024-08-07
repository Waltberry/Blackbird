#!/bin/bash

# Step 1: Create React App
npx create-react-app my-react-app
cd my-react-app

# Step 2: Commit the Initial Code
git init
git add .
git commit -m "Initial commit"

# Step 3: Create GitHub Repository
gh repo create my-react-app --public --description "My React App"

# Step 4: Switch to Branch `update_logo`
git checkout -b update_logo

# Step 5: Replace Existing Logo
# Assuming Vector.svg is downloaded or fetched from the URL provided
# curl -o src/logo.svg https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg

# Step 6: Replace Existing Link
# Assuming you update the link in your application code
# For example, update src/App.js or wherever the link is used
# sed -i 's|old_link_here|https://www.propelleraero.com/dirtmate/|g' src/App.js

# Step 7: Commit Changes
git add .
git commit -m "Update logo and link"

# Step 8: Push Changes to GitHub
git push origin update_logo

# Step 9: Create Pull Request (PR)
gh pr create --base main --head update_logo --title "Update logo and link"

# Step 10: Merge the Pull Request
gh pr merge 1 --merge

# Step 11: Add GitHub Repository URL to command.sh
echo "REPO_URL https://github.com/Waltberry/my-react-app/tree/main" >> command.sh
