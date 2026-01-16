import subprocess

songname = subprocess.check_output(["playerctl", "metadata", "--format", "{{title}}"], text=True).rstrip()
artistname = subprocess.check_output(["playerctl", "metadata", "--format", "{{artist}}"], text=True).rstrip()

options = f"""󰐎  play/pause  󰐎

 {songname} 
 {artistname} 

󰼧   next song   󰼧
󰼨 previous song 󰼨
"""


chosen_option = subprocess.check_output(
    ["rofi", "-dmenu", "-p", "music"], input=options, text=True
).strip()


match chosen_option:
    case "󰐎  play/pause  󰐎":
        subprocess.check_output(["playerctl", "play-pause"])
        status = subprocess.check_output(["playerctl", "status"], text=True)
        subprocess.check_output(["notify-send", "music is now", status])
    case "󰼧   next song   󰼧":
        subprocess.check_output(["playerctl", "next"])
    case "󰼨 previous song 󰼨":
        subprocess.check_output(["playerctl", "previous"])
