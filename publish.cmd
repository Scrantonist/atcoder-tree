@echo off
cd /d "%~dp0"
echo === AtCoder Tree を公開します ===
echo.
git add -A
git diff --cached --quiet
if %errorlevel%==0 goto nochange
git commit -m "Update notes"
git push
echo.
echo push しました。1-2分で反映されます:
echo   https://scrantonist.github.io/atcoder-tree/
goto done
:nochange
echo 変更はありません。
:done
echo.
pause
