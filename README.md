# slack-home-office

## Create a Slack app for yourself

- Give it the same name as your Slack username (give it the same profile picture as your own).
- Set up an Incoming Webhook and redirect it to the #remote-work channel.

## Create a fork for yourself

- Fork this repository for yourself.
- In bin/home-office.rb, replace the URL with your own webhook URL.

## Create a Heroku app for yourself

- In Settings, add the following buildpack: https://github.com/bundler/heroku-buildpack-bundler2
- In Deploy, add your GitHub fork of this repository.
- In Resources, add the Heroku Scheduler add-on.
- In Heroku Scheduler, the enter the command "[heroku run] rake", then set up the scheduling.
