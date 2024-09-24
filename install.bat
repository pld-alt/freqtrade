cd /d "%~dp0"
pip install --find-links build_helpers\ TA-Lib -U
pip install -r requirements.txt
pip install -e .
freqtrade install-ui
freqtrade create-userdir --userdir "%USERPROFILE%\FreqTrade"
freqtrade new-config --config "%USERPROFILE%\FreqTrade\config.json"
