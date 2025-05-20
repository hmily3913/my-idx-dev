import pyautogui
import time

pyautogui.click(843, 438)

while True:
    pyautogui.write("show me test")
    time.sleep(60)
    pyautogui.hotkey('ctrl', 'a')
    pyautogui.press('delete')
    time.sleep(60)