#
# Do some quick cowboy deployments on test server
# go-cowboy user@host:/var/www/project.lt/current src/CoreBundle/Service/ShittyService.php
#
go-cowboy() {
    scp $2 $1/$2 
}

# Move item from Home directory to Dropbox
# and create symlink to it on home directory
dropbox-link() {
   mv $1 ~/Dropbox/config/home
   ~/Dropbox/config/home
}

# Quickly create new Centos7 box using vagrant
vagrant-new() {
    DIR=~/Sites/vagrant/$1
    take $DIR
    vagrant init bento/centos-7.1; vagrant up --provider virtualbox
}

# Repeat task for N times
run() {
    number=$1
    shift
    for n in $(seq $number); do
      $@
    done
}

#
# Change directory to the current Finder directory
# Finder must be open.
# 
cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

#
# Kill process by name (string)
# $ kill-it php
# 
kill-it() {
    pkill -9 -f "$1"
}

# 
# Open phpmyadmin in browser
# $ pma
# or
# $pma db_name
# 
pma() {
    if [ -z "$1" ] ; then
        open http://pma.local
    else
        open "http://pma.local/db_structure.php?db=$1"
    fi
}

#
# Lock vendor version on composer.lock.
# Before locking you must have checked out the commit of 
# that particular vendor you want to lock.
# Usage: 
# $ composer-lock isign/api
# Use package name from composer.json
#
composer-lock() {
    if [ -z "$1" ] ; then
	    echo "Please give me dependency name"
	    return
    fi
    NEW_HASH=$(cd vendor/$1; git log -1 --format="%H")
    LOCKED_HASH=$(cat composer.lock | grep '"name": "'$1'"' -A 5 | grep reference | sed -e s/\"//g | awk '{ print $2}')
    echo "Version found: $NEW_HASH"
    echo "Version locked: $LOCKED_HASH"

    if [ "$NEW_HASH" = "$LOCKED_HASH" ] ; then
	echo "Nothing to update"
    else
	echo "Updating lock file"
	sed -i.bak s/$LOCKED_HASH/$NEW_HASH/g composer.lock
    fi
}

# Open jenkins in browser
jenkins() {
    if [ -z "$1" ] ; then
        open http://jenkins:8080
    else
        open "http://jenkins:8080/job/$1"
    fi
}

# Start jenkins build
jenkins-build() {
    curl -X POST "http://jenkins:8080/job/$1/build?token=TOKEN&delay=0sec"
}

# Create ssh tunnel for mysql on port 3305
ssh-tunnel-mysql() {
    ssh -fNg -L 3305:127.0.0.1:3306 "$1@$2"
}

# Create ssh tunnel for http on port 2222
ssh-tunnel-http() {
    ssh -p 2222 -fNg -L 8080:127.0.0.1:80 "$1@$2"
}

# Create database
db-create() {
    mysql -u root -pvienasdutrys -e "CREATE DATABASE $1;"
}
# YOLO.
db-drop() {
    # @TODO perform db-backup before dropping.
    mysql -u root -pvienasdutrys -e "DROP DATABASE $1;"
}

# Create db backup by given name
# Usage: 
# $ db-backup DB_NAME backup1
db-backup() {
    mysqldump -u root -pvienasdutrys $1 > ~/Dropbox/backups/db/$2.sql
    echo "BACKUP ID: $2 (~/Dropbox/backups/db/$2.sql)"
}

# Restore db backup by given name
# Usage: 
# $ db-restore DB_NAME backup1
db-restore() {
    db-drop $1;
    db-create $1;
    mysql -u root -pvienasdutrys $1 < ~/Dropbox/backups/db/$2.sql
}
