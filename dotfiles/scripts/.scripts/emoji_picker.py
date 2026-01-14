import subprocess
from pathlib import Path

emojis = Path("~/.scripts/assets/emojis.txt").expanduser().read_text()

chosen = subprocess.check_output(
   ["rofi", "-dmenu", "-p", "emoji"],
    input=emojis,
    text=True,
)

subprocess.run(["wl-copy"], input=chosen.split()[0], text=True)
