# DevNotes

A developer-focused note-taking application with support for code highlighting, Mermaid diagrams, and templates.

## Features

- 📝 **Markdown Editor** with syntax highlighting and live preview
- 📊 **Mermaid Diagrams** - Flowcharts, sequence diagrams, C4 diagrams, and more
- 🎨 **Code Blocks** - 20+ languages with syntax highlighting and copy buttons
- 🔍 **Full-text Search** - Find notes instantly with FTS5
- 🏷️ **Tags & Organization** - Keep your notes organized
- 📋 **Templates System** - 9 professional templates (PRD, TDD, ADR, API Spec, Runbook, and more)
- 🔗 **Wiki-style Links** - Bidirectional linking with `[[Note Title]]`
- 💬 **Enhanced Callouts** - 7 types (info, warning, danger, tip, note, success, error)
- ⌨️ **Keyboard Shortcuts** - Fast navigation with Cmd+K command palette
- 🌙 **Dark/Light Mode** - Beautiful slate color scheme
- 📤 **Export** - Markdown, HTML, PDF

## Installation

### Homebrew (macOS/Linux)
```bash
brew tap hpareek07/devnotes
brew install devnotes
```

## Quick Start

```bash
# Start the app
devnotes start

# Create a new note
devnotes new "My First Note"

# Search notes
devnotes search "authentication"

# List all notes
devnotes list
```

## Usage

### Starting the Server

```bash
devnotes start
```

This will:
1. Start a local server on `http://localhost:3456`
2. Open your browser automatically
3. Store notes in `~/.devnotes/`

### CLI Commands

```bash
devnotes start                              # Start server and open browser
devnotes serve --port 8080                  # Start server only
devnotes new "Note Title"                   # Create new note
devnotes new "Note" --template tdd          # Create from template
devnotes list                               # List all notes
devnotes list --tags architecture           # Filter by tag
devnotes search "keyword"                   # Search notes
devnotes export "note-id" --format pdf      # Export note
devnotes config --set theme dark            # Configure
devnotes version                            # Show version
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

MIT License - see LICENSE file for details
