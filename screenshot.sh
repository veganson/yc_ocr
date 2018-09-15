#!/bin/bash

screencapture -t png -i /tmp/yauheniy_ocr_screenshot.png
tesseract /tmp/yauheniy_ocr_screenshot.png /tmp/yauheniy_ocr_transcription
cat /tmp/yauheniy_ocr_transcription.txt | pbcopy
rm /tmp/yauheniy_ocr_screenshot.png /tmp/yauheniy_ocr_transcription.txt
osascript -e 'display notification "Text has been copied to clipboard" with title "Success"'

