#!/bin/bash

# This script demotes all admin users on a macOS system to standard users.
# It should be run as the root user.

# Get the list of admin users
admin_users=$(dscl . -read /Groups/admin GroupMembership)

# Remove the "GroupMembership" prefix
admin_users=${admin_users#GroupMembership:}

# Loop through each admin user
for user in $admin_users; do
  # Check if the user is not root
  if [[ "$user" != "root" ]]; then
    echo "Demoting user $user to standard user
    
    # Remove the user from the admin group
    dseditgroup -o edit -d "$user" -t user admin
  fi
done

echo "All admin users have been demoted to standard users"
