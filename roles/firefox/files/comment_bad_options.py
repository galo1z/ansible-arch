#!/usr/bin/python
import sys

bad_options = [
    "keyword.enabled",
    "browser.display.use_document_fonts",
    "browser.privatebrowsing.autostart",
    "privacy.sanitize.sanitizeOnShutdown",
    "privacy.clearOnShutdown.cookies",
    "privacy.clearOnShutdown.downloads",
    "privacy.clearOnShutdown.history",
    "privacy.clearOnShutdown.sessions",
    "privacy.cpd.history",
    "places.history.enabled",
    "network.cookie.lifetimePolicy"
    ]

def is_line_bad(line):
  for option in bad_options:
    if line.find(option) != -1:
      return True
  return False

new_file=[""]
with open(sys.argv[1], 'r') as conf_file:
  for line in conf_file:
    if is_line_bad(line):
      new_file.append("//"+line)
    else:
      new_file.append(line)

with open(sys.argv[1], 'w') as conf_file:
  for line in new_file:
    conf_file.write(line)
