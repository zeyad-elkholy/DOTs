#!/bin/bash
word=$(echo "" | dmenu -p "add word: ")
meaning=$(echo "" | dmenu -p "add meaning: ")
echo "$word | $meaning"  >> ~/study/English\ Portfolio/vocabsBank.txt

