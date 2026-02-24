# Triple Whale Homebrew Tap

Homebrew tap for Triple Whale developer tools.

---

## Polisher

macOS menu bar app that polishes your text using AI.

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
3. Choose a model (default: gpt-5.2)

#### Step 3: Use it

Two modes:

**Clipboard Mode** (`Cmd+B`):
1. Copy any text (`Cmd+C`)
2. Press `Cmd+B`
3. Paste the improved text (`Cmd+V`)

**Replace Mode** (`` Cmd+` ``):
1. Select text in any app
2. Press `` Cmd+` ``
3. The text gets polished in-place
4. Requires Accessibility permission (you'll be prompted on first use: System Settings > Privacy & Security > Accessibility > enable Polisher)

A floating "Polishing..." indicator appears near your cursor while processing.

### Settings

#### General
- **Clipboard Mode** - enable/disable and customize the shortcut (default: `Cmd+B`)
- **Replace Mode** - enable/disable and customize the shortcut (default: `` Cmd+` ``). Requires Accessibility permission.
- **Launch at login** - enabled by default
- **System Prompt** - edit the instructions sent to the AI. Controls how your text gets improved. Must be at least 30 characters.

#### History
Browse your last 20 improvements. Click to expand and see original vs improved. Search to filter by keyword.

#### Logs
Real-time debug view with level filtering (Info, Success, Error, Debug), search, and copy to clipboard.

#### About
Shows app version and build number.

### Uninstall

```bash
brew uninstall --cask polisher
```
