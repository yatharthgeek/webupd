# Website Update Notifier

A simple shell script that monitors a specified website for updates and sends desktop notifications when changes are detected.

## Features

- Monitors a specified URL for changes.
- Sends desktop notifications when the website content is updated.
- Runs continuously in an infinite loop with a configurable check interval.

## Requirements

- `curl`: For fetching the website content.
- `notify-send`: For sending desktop notifications (part of `libnotify-bin` package).
- A Unix-like environment (Linux, macOS, etc.).

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/website-update-notifier.git
   cd website-update-notifier
   ```

2. **Make the script executable**:
   ```bash
   chmod +x check_website_update.sh
   ```

## Usage

1. **Edit the script**:
   Open the `check_website_update.sh` file in a text editor and modify the following variables:

   ```bash
   URL="http://127.0.0.1"  # Replace with the website URL you want to monitor
   old="old.html"          # Filename for the old content
   new="new.html"          # Filename for the new content
   ```

2. **Run the script**:
   Execute the script in the terminal:
   ```bash
   ./check_website_update.sh
   ```

3. **Stop the script**:
   You can stop the script at any time by pressing `Ctrl + C` in the terminal.

## Example

### Monitoring a Local Server

To monitor a local server running on `http://127.0.0.1`, you would set the URL in the script as follows:

```bash
URL="http://127.0.0.1"
```

### Monitoring an External Website

To monitor an external website, such as `http://example.com`, modify the URL:

```bash
URL="http://example.com"
```

### Notification Example

When the content of the monitored website changes, you will receive a desktop notification similar to:

```
webupd
http://example.com is updated
```

## Customization

- **Change Check Interval**: Modify the `sleep` duration in the script to change how often the website is checked (currently set to 5 seconds).
