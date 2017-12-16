# install python 3.4--navigate to -- CMD--C--Python 3.4--Scripts--pip.exe install pyautogui
from subprocess import *
import pyautogui 
import os

def openFile():
    try:
        ise525="simexp.exe"
        #os.system(ise525)
        fd=Popen(ise525)
        pyautogui.typewrite(' 1234', interval=0.1)
        pyautogui.keyDown('enter')
        pyautogui.typewrite('yes', interval=0.1)
        pyautogui.keyDown('enter')
        pyautogui.typewrite('5678', interval=0.1)
        pyautogui.keyDown('enter')
        pyautogui.typewrite('OTV', interval=0.1)
        pyautogui.keyDown('enter')
        pyautogui.typewrite('1', interval=0.1)
        pyautogui.keyDown('enter')
##        inp_file=open('dataPoints.txt','r')
##        for line in inp_file:
##            onlyLine=line.strip()
##            pyautogui.typewrite(onlyLine, interval=0.2)
##            pyautogui.keyDown('enter')
##            pyautogui.typewrite('yes', interval=0.2)
##            pyautogui.keyDown('enter')
##        inp_file.close()
        
    except Exception (e):
        print ((str(e))+ " this is exception")
        
openFile()

