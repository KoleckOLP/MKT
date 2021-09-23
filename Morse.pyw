import sys
import pyperclip

inBoy = sys.argv[1]
outBoy = ""

if inBoy[-1] == " ":
    inBoy = inBoy[:-1]

inBoyArr = inBoy.split(" ")

MorseDict = {
    ".-": "A",
    "-...": "B",
    "-.-.": "C",
    "-..": "D",
    ".": "E",
    "..-.": "F",
    "--.": "G",
    "....": "H",
    "..": "I",
    ".---": "J",
    "-.-": "K",
    ".-..": "L",
    "--": "M",
    "-.": "N",
    "---": "O",
    ".--.": "P",
    "--.-": "Q",
    ".-.": "R",
    "...": "S",
    "-": "T",
    "..-": "U",
    "...-": "V",
    ".--": "W",
    "-..-": "X",
    "-.--": "Y",
    "--..": "Z",
    "-----": "0",
    ".----": "1",
    "..---": "2",
    "...--": "3",
    "....-": "4",
    ".....": "5",
    "-....": "6",
    "--...": "7",
    "---..": "8",
    "----.": "9",
    "/": " "}

#inBoyArr = inBoyArr[:-1]

for currBoy in inBoyArr:
    currBoyPro = MorseDict[currBoy]
    outBoy = outBoy + currBoyPro

pyperclip.copy(outBoy)

sys.exit()