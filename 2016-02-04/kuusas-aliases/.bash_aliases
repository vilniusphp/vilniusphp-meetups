#
# OSX 10.11 only
# start-stop nginx/php-fpm/mysql
# 
alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'
alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias php-fpm.restart='php-fpm.stop && php-fpm.start'
alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'
alias nginx.logs.error='tail -250f /usr/local/etc/nginx/logs/error.log'
alias nginx.logs.access='tail -250f /usr/local/etc/nginx/logs/access.log'
alias nginx.logs.default.access='tail -250f /usr/local/etc/nginx/logs/default.access.log'

#
# Quick browse/edit configs
#
alias conf="vi ~/Dropbox/config"
alias conf-subl="subl ~/Dropbox/config"

#
# Quick dir aliases
#
alias sites="cd ~/Sites"

 # Reloads zsh
alias reload="source ~/.zshrc;"
# ...
alias gs="git status"
 # Opens Atom editor
alias atom='open -a "Atom" .'
# Alias to atom alias
alias at='atom'
 # phpspec shorthand
alias spec='phpspec'
 # run phpspec tests
alias sp='phpspec run'
# shorthand for phpunit
alias ut='phpunit'
# run symfony tests by loading configuration from app folder
alias sfut='phpunit -c app'
# run symfony tests with fastest
alias sfut-fast='find src -name "*Test.php" | fastest "php bin/phpunit -c app {};"'
# run unit tests with fastest
alias fut='time find src -name "*Test.php" | fastest "php bin/phpunit -c app {};"'
# Using force to clear symfony cache
alias sfc='rm -rf app/cache/*'
# Alias to symfony console with prod env
alias prod='app/console --env=prod'
# Alias to symfony console with dev env
alias dev='app/console --env=dev'
# Composer update w/o php memory limit
alias cu='php -d memory_limit=-1 /usr/local/Cellar/composer/1.0.0-alpha11/libexec/composer.phar update'
# vagrant shorthand
alias v="vagrant"
# brew-update 
alias brew-update='brew update && brew upgrade brew-cask'
# run less with special attributes
alias less='less -SR'
# composer shorthand
alias c='composer'
# Go to my logs
alias logs='cd ~/Sites/logs'
# Open regex helper
alias regex='open http://www.regexr.com/'
# Open rabbitmq admin inteface
alias rabbitmq-admin='open http://localhost:15672/'
# for trolling others
alias vieta='du -h -d 1 | sort -r | head -n 20'
# open chrome
alias chrome='open -a "Google Chrome"'

#
# SSH shortcuts
#
alias ssh-vagrant='ssh -l root 127.0.0.1 -p 2222'

# Openssl
alias openssl-check='/usr/bin/openssl version'

# Shrug
alias shrug='echo "¯\_(ツ)_/¯" | pbcopy'

# Others
alias notes='vi ~/Dropbox/Documents/Notes'

# Enable/disable xdebug
alias xdebug-disable="sed 's/zend_extension/;zend_extension/' </usr/local/etc/php/5.6/conf.d/ext-xdebug.ini > /tmp/xdebug.ini && mv /tmp/xdebug.ini /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini && cat /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini"
alias xdebug-enable="sed 's/;zend_extension/zend_extension/' </usr/local/etc/php/5.6/conf.d/ext-xdebug.ini > /tmp/xdebug.ini && mv /tmp/xdebug.ini /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini && cat /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini"

# Aliases for https://github.com/ginatrapani/todo.txt-cli
alias t='todo.sh'
alias t-isign='rm /Users/z/.todo.cfg && ln -sF /Users/z/Dropbox/Documents/.todo-isign.cfg /Users/z/.todo.cfg'
alias t-home='rm /Users/z/.todo.cfg && ln -sF /Users/z/Dropbox/Documents/.todo-home.cfg /Users/z/.todo.cfg'

# Clear dns cache. OSX ONLY.
alias dns-flush='dscacheutil -flushcache'

# Show about me page for presentation.
alias me='cat ./zilvinas-kuusas.txt'

# My presentation
alias pranesimas='vi ./pranesimas.txt'
