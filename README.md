# Telegram File Scanner Bot 🔍

A powerful Telegram bot that scans files for malware using VirusTotal and provides AI-powered analysis using OpenAI. Built with Node.js and modern best practices.

## Features ✨

- File scanning up to 100MB
- VirusTotal integration for malware detection
- AI-powered file analysis using OpenAI
- Rate limiting and user tracking
- File quarantine system
- Admin dashboard and controls
- Multi-language support (coming soon)
- Detailed logging and monitoring
- Redis-based job queue for scalability

## Prerequisites 📋

- Node.js 16.x or higher
- Redis server
- VirusTotal API key
- OpenAI API key
- Telegram Bot token

## Installation 🚀

1. Clone the repository:
```bash
git clone https://github.com/yourusername/telegram-file-scanner-bot.git
cd telegram-file-scanner-bot
```

2. Install dependencies:
```bash
npm install
```

3. Create and configure the environment file:
```bash
cp .env.example .env
```

Edit the `.env` file with your configuration:
```env
# Telegram Bot Configuration
BOT_TOKEN=your_telegram_bot_token
ADMIN_CHAT_ID=your_admin_chat_id

# API Keys
VIRUSTOTAL_API_KEY=your_virustotal_api_key
OPENAI_API_KEY=your_openai_api_key

# Redis Configuration
REDIS_URL=redis://localhost:6379

# File Upload Settings
MAX_FILE_SIZE=104857600
UPLOAD_DIR=./uploads
QUARANTINE_DIR=./quarantine

# Rate Limiting
MAX_SCANS_PER_HOUR=5
```

4. Create required directories:
```bash
mkdir uploads quarantine logs data
```

5. Start the bot:
```bash
npm start
```

For development:
```bash
npm run dev
```

## Docker Deployment 🐳

1. Build the image:
```bash
docker build -t file-scanner-bot .
```

2. Run with Docker Compose:
```bash
docker-compose up -d
```

## Bot Commands 🤖

- `/start` - Start the bot
- `/help` - Show help message
- `/scan` - Scan a file (send file after)
- `/status` - Check scan quota
- `/history` - View scan history
- `/stats` - Show global statistics

Admin Commands:
- `/admin_stats` - Detailed statistics
- `/clear_quarantine` - Clear quarantine folder
- `/broadcast` - Send message to all users

## Architecture 🏗️

The bot is built with a modular architecture:

- `src/index.js` - Main entry point
- `src/handlers/` - Command and file handlers
- `src/middleware/` - Bot middleware
- `src/database/` - Database operations
- `src/utils/` - Utility functions
- `src/queues/` - Job queue processing

## Security 🔒

- File size limits
- Rate limiting per user
- Quarantine system for malicious files
- Secure API key handling
- Input validation
- Error handling

## Contributing 🤝

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License 📄

This project is licensed under the MIT License - see the LICENSE file for details.

## Support 💬

For support, please open an issue in the GitHub repository or contact the administrators through the bot using the /help command.

## Acknowledgments 🙏

- [Telegraf](https://github.com/telegraf/telegraf)
- [VirusTotal](https://www.virustotal.com)
- [OpenAI](https://openai.com)
- [Bull](https://github.com/OptimalBits/bull) 