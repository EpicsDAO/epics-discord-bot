# Epics Discord BOT

Automatically ban malicious users when they enter Discord.

This is a sample. When a user has username `Announcement` ,
THE CHECKER(BOT) will ban immidiately.

You can custermize for your setting.

## Usage

### 1. Set `.env`

`TOKEN` is discord token
`SERVER_ID` is your discord server id
`WELCOME_BOT_ID` is the other bot id that pushes message when new user join.

### 2. Run
```bash
ruby app.rb
```


or



```bash
docker build . -t epics_bot_rb
docker run --env-file .env --restart always -d epics_bot_rb
```