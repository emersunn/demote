# macOS Demote Admins to Standard Users

This script demotes all admin users on a macOS system to standard users. It should be run as the root user.

## Usage

1. Download the `demote_admins.sh` script.
2. Open Terminal.
3. Navigate to the directory containing the script.
4. Run `chmod +x demote_admins.sh` to make the script executable.
5. Run `sudo ./demote_admins.sh` to execute the script as the root user.

## Warning

Running this script will demote all admin users except for the root user. Be cautious when using this script and ensure you have a root user or another admin account available for recovery purposes.

## License

This project is released under the MIT License.
