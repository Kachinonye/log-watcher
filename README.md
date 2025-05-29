# Log Watcher

This is a Bash script that monitors a log file (`test.log`) for suspicious activity such as unauthorized access attempts. 

When it detects the keyword **"unauthorized access attempt"**, it immediately alerts the user with a notification.

## How It Works

- Monitors a specified log file in real-time using `tail -F`.
- Looks for a specific keyword (e.g., "unauthorized access attempt").
- Prints an alert message when suspicious activity is detected.

## Usage

```bash
chmod +x log-watcher.sh
./log-watcher.sh

