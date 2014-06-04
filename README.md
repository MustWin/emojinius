Emojinius
=========

Yes, I know you don't need the DB. We'll be saving all translations at
some point, though, so... yeah.

To stand up this application:

```
git clone https://github.com/MustWin/emojinius.git
cd emojinius
createuser -s emojinius
bundle install
bundle exec rake db:setup
```
