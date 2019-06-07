@echo off

git status >NUL
git diff --quiet
if errorlevel 1 (
  echo Work directory is dirty, exiting
  exit /b 1
)

copy %~dp0\gitattributes.txt %~dp0\..\.git\info\attributes
git config filter.in1251.clean "iconv -t utf-8 -f cp1251"
git config filter.in1251.smudge "iconv -f utf-8 -t cp1251"

:: https://stackoverflow.com/questions/21652242/git-re-checkout-files-after-creating-smudge-filter
pushd ..
git stash save
rm .git/index
git checkout HEAD -- .
git stash pop
popd
