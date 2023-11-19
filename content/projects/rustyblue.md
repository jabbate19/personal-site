---
title: RustyBlue
git_url: https://github.com/jabbate19/rustyblue
img_name: rusty.png
order: 3
---
Looking to write more code in low-level languages and with cybersecurity competitions in mind, I chose to dive into Rust for this project. I have lately taken interest to netwoork analysis and monitoring, so I thought I would write something to help me during Blue Team competitions in Rust. Hence, RustyBlue was born! As of now, the project serves two functions. It has "sniff" mode, which essentially runs as Wireshark in the terminal. There is also "anomaly" mode, which follows a given YAML file to tell what data is safe and what may be an attacker. This was very fun to write since I had to manually parse the entire network packet layer by layer. The PCAP library provides each packet's data as an array of 8-bit integer values, so I then had to research the headers of each layer and protocol to ensure it is properly parsed and displayed.