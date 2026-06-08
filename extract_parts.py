#!/usr/bin/env python3
"""
Extract part information from markdown assembly guide files.
Creates a CSV with unique parts based on image filenames.
"""

import os
import re
import csv
from pathlib import Path
from collections import defaultdict

def extract_parts_from_file(filepath):
    """Extract part divs from a markdown file."""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Find all <div class="part"> blocks
    part_pattern = r'<div class="part">\s*(.*?)</div>'
    parts = re.findall(part_pattern, content, re.DOTALL)

    return parts

def parse_part_div(part_html):
    """Parse a part div to extract image, description, and markings."""
    # Extract image filename
    img_match = re.search(r'<img src="[^"]*?/([^/"]+)"', part_html)
    if not img_match:
        return None

    image_filename = img_match.group(1)

    # Extract all <p> tags
    p_tags = re.findall(r'<p>(.*?)</p>', part_html, re.DOTALL)

    if not p_tags:
        return None

    # First <p> contains the description (after the <br> tag)
    first_p = p_tags[0]
    # Split on <br> and take the part after it
    br_split = re.split(r'<br\s*/?>', first_p)
    if len(br_split) > 1:
        description = br_split[1].strip()
    else:
        description = first_p.strip()

    # Subsequent <p> tags are markings/other notes
    markings = []
    for p in p_tags[1:]:
        markings.append(p.strip())

    markings_text = ' | '.join(markings) if markings else ''

    return {
        'image': image_filename,
        'description': description,
        'markings': markings_text
    }

def main():
    # Get content directory
    content_dir = Path(__file__).parent / 'content'

    # Dictionary to store unique parts by image filename
    parts_dict = {}

    # Find all markdown files
    md_files = list(content_dir.glob('*.md'))

    print(f"Scanning {len(md_files)} markdown files...")

    for md_file in md_files:
        print(f"Processing {md_file.name}...")
        part_divs = extract_parts_from_file(md_file)

        for part_html in part_divs:
            part_data = parse_part_div(part_html)
            if part_data:
                image = part_data['image']
                # Only add if we haven't seen this image before
                if image not in parts_dict:
                    parts_dict[image] = part_data

    # Sort by image filename for consistency
    sorted_parts = sorted(parts_dict.values(), key=lambda x: x['image'])

    # Write to CSV
    output_file = Path(__file__).parent / 'parts_list.csv'

    with open(output_file, 'w', newline='', encoding='utf-8') as csvfile:
        fieldnames = ['Image', 'Description', 'Markings/Other']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

        writer.writeheader()
        for part in sorted_parts:
            writer.writerow({
                'Image': part['image'],
                'Description': part['description'],
                'Markings/Other': part['markings']
            })

    print(f"\nExtracted {len(sorted_parts)} unique parts")
    print(f"CSV written to: {output_file}")

if __name__ == '__main__':
    main()
