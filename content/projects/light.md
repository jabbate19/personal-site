---
title: Light
git_url: https://github.com/jabbate19/light
img_name: Light.png
order: 1
---
Everyone loves LEDs, right? But who likes getting up to get the remote to change them? This was the dilemma I faced in the Lounge at Computer Science House. In standard computer-geek fashion, I chose to fix it with a webiste. This project uses a Raspberry Pi, Flask Website, and WebSockets to control WS28xx lights. The website is hosted on an OKD cluster, and uses the websockets to control the Pis running a systemd service to run the lights. The proof of concept was done with 3 feet of lights, and I hope to add it to the actual lounge in much larger scale soon!

