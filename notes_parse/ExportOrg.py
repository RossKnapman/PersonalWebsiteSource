#!/usr/bin/env python3

################################################
# Convert File from Org-mode for Notes Section #
################################################

# Should be run from notes_parse directory

import os
import glob

# Delete already existing files
to_remove = glob.glob('../content/notes/*.org')
for f in to_remove:
    os.remove(f)

out_file_name = ''

with open('notes.org', 'r') as org_file:
    for line in org_file:

        # The very top level
        if line.startswith('* '):
            pass

        # Loop through top-level headings
        elif line.startswith('** '):
            title = line.replace('** ', '').replace('\n', '')
            out_file_name = '../content/notes/' + title.replace(' ', '').replace('/', '') + '.org'

            with open(out_file_name, 'w+') as out_file:
                out_file.write('+++\nTitle = "' + title + '"\n+++\n\n')
                
        else:
            with open(out_file_name, 'a+') as out_file:
                out_file.write(line.replace('\(', '').replace('\)', ''))