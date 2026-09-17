#!/usr/bin/env python3
"""
update_readme.py
Counts solution files in this repo and rewrites the Stats table in
README.md between STATS-START / STATS-END markers.
Timestamp shown in India Standard Time (IST).
"""

import os
from datetime import datetime, timezone, timedelta

README_PATH = "README.md"
SCRIPT_NAME = os.path.basename(__file__)

SOLUTION_EXTENSIONS = {".sql": "SQL"}
IGNORED_DIRS = {".git", ".github", "__pycache__", "venv", ".venv", "node_modules"}

START_MARKER = "<!-- STATS-START -->"
END_MARKER = "<!-- STATS-END -->"

IST = timezone(timedelta(hours=5, minutes=30))


def count_solutions(root="."):
    counts = {lang: 0 for lang in SOLUTION_EXTENSIONS.values()}
    for dirpath, dirnames, filenames in os.walk(root):
        dirnames[:] = [d for d in dirnames if d not in IGNORED_DIRS and not d.startswith(".")]
        for filename in filenames:
            if filename == SCRIPT_NAME or filename == README_PATH:
                continue
            _, ext = os.path.splitext(filename)
            if ext in SOLUTION_EXTENSIONS:
                counts[SOLUTION_EXTENSIONS[ext]] += 1
    return counts


def build_stats_block(counts):
    total = sum(counts.values())
    timestamp = datetime.now(IST).strftime("%Y-%m-%d %H:%M IST")
    lines = [START_MARKER, "| Metric | Count |", "|---|---|"]
    lines.append(f"| Total solutions | {total} |")
    for lang, count in counts.items():
        lines.append(f"| {lang} solutions | {count} |")
    lines.append("")
    lines.append(f"_Last updated: {timestamp}_")
    lines.append(END_MARKER)
    return "\n".join(lines)


def update_readme(stats_block):
    if not os.path.exists(README_PATH):
        raise FileNotFoundError(f"{README_PATH} not found.")
    with open(README_PATH, "r", encoding="utf-8") as f:
        content = f.read()
    if START_MARKER not in content or END_MARKER not in content:
        raise ValueError(f"Markers {START_MARKER}/{END_MARKER} not found in {README_PATH}.")
    before = content.split(START_MARKER)[0]
    after = content.split(END_MARKER)[1]
    new_content = before + stats_block + after
    with open(README_PATH, "w", encoding="utf-8") as f:
        f.write(new_content)


def main():
    counts = count_solutions(".")
    stats_block = build_stats_block(counts)
    update_readme(stats_block)
    total = sum(counts.values())
    print(f"README.md updated: {total} total solutions "
          f"({', '.join(f'{lang}: {c}' for lang, c in counts.items())})")


if __name__ == "__main__":
    main()
