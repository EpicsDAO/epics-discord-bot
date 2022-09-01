# Epics Discord BOT

<img width="402" alt="checker-bot" src="https://user-images.githubusercontent.com/23725836/187983091-2b4b113e-5831-482f-b46e-19fcf0e94382.png">


Automatically ban malicious users when they enter Discord.

This is a sample. When a user has username `Announcement` ,
THE CHECKER(BOT) will ban immidiately.

You can custermize for your setting.

## Usage

### 1. Set `.env`

Update `.env.sample` to `.env`

`.env.sample`
```
TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxx
SERVER_ID=123456789
WELCOME_BOT_IT=12345677
```

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
