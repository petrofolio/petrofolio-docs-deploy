@echo off
echo Cleaning old lockfile...
del Gemfile.lock

echo Adding platform support...
bundle lock --add-platform x86_64-linux
bundle lock --add-platform x64_mingw_ucrt

echo Installing dependencies...
bundle config set --local path vendor\bundle
bundle install

echo Building site locally...
bundle exec jekyll build

echo Done. Site built in .\_site\
pause
