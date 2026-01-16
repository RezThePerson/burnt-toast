import subprocess


def current_volume():
    current_volume_unformatted = subprocess.check_output(
        ["wpctl", "get-volume", "@DEFAULT_SINK@"]
    )

    return (current_volume_unformatted.split()[-1])


def generate_options():
    temp = """"""

    for i in range(150):
        temp = f"{temp} {i}%\n"
    temp = f"{temp} 150%"

    return temp


chosen_volume = subprocess.check_output(
    ["rofi", "-dmenu", "-p", current_volume()], input=generate_options(), text=True
).strip()

if int(chosen_volume[:-1]) < 61:
    subprocess.run(["wpctl", "set-volume", "@DEFAULT_SINK@", chosen_volume])
    subprocess.run(["notify-send", "Volume set to", chosen_volume])
else:
    sure = subprocess.check_output(
        ["rofi", "-dmenu", "-p", "Conforming"],
        input=f"Sure you want to select {chosen_volume}, its a bit too loud!\nno\nno\nno\nyes",
        text=True,
    ).strip()

    if sure == "yes":
        subprocess.run(["wpctl", "set-volume", "@DEFAULT_SINK@", chosen_volume])
        subprocess.run(["notify-send", "Volume set to", chosen_volume])
    else:
        subprocess.run(["notify-send", "Volume change canceled"])
