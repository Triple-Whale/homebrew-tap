# Triple Whale Homebrew Tap

Homebrew tap for Triple Whale developer tools.

---

## Polisher

macOS menu bar app that polishes your text using AI. Copy, shortcut, paste.

### Install

```bash
brew install --cask Triple-Whale/tap/polisher
```

Open Polisher from Applications - a wand icon will appear in your menu bar.

### Getting Started

#### Step 1: Add your API key

This is required before you can use the app.

1. Click the wand icon in the menu bar > **Settings**
2. Go to the **API Keys** tab
3. Add at least one API key:
   - **Claude (Anthropic)** - click "Get API Key" to open the [Anthropic Console](https://console.anthropic.com/settings/keys)
   - **OpenAI** - click "Get API Key" to open the [OpenAI Platform](https://platform.openai.com/api-keys)
   - **Gemini (Google)** - click "Get API Key" to open [Google AI Studio](https://aistudio.google.com/apikey)
4. Paste your key and click **Save**

#### Step 2: Choose your provider

1. Go to the **Provider** tab
2. Select your preferred provider (Claude, OpenAI, or Gemini)
3. Choose a model (default is recommended)
4. The status indicator shows whether your API key is configured

#### Step 3: Use it

1. Copy any text (`Cmd+C`)
2. Press `Cmd+Option+I`
3. The menu bar shows "Polishing..." with a loading icon while working
4. When you see "Done! Paste to use." - paste (`Cmd+V`)

### Settings

#### General

- **Global hotkey** - enable/disable the keyboard shortcut
- **Shortcut** - click the shortcut field and press a new key combination to customize it
- **Launch at login** - start Polisher automatically when you log in
- **System Prompt** - edit the instructions sent to the AI. This controls how your text gets improved. The default fixes grammar and makes text professional. You can change it to anything (e.g. "translate to Spanish", "make it casual", "summarize"). Must be at least 30 characters.

#### History

Browse your last 20 improvements. Each entry shows:
- Timestamp and a preview of the improved text
- Click to expand and see original vs improved side by side
- Copy button to grab the improved text again
- Search to filter by keyword
- Clear All to wipe history

#### Logs

Real-time debug view of everything happening under the hood:
- **Info** (blue) - shortcut triggered, text captured, API call started
- **Success** (green) - response received, copied to clipboard
- **Error** (red) - API failures with full error details
- **Debug** (gray) - history saved, hotkey registration

Filter by level, search by keyword, copy logs to clipboard. Useful when something isn't working.

#### About

Shows app version and build number.

### Uninstall

```bash
brew uninstall --cask polisher
```
