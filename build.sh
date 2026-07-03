#!/usr/bin/env bash

pages=(
	"index:Dillon's Home Page"
	"publications:Dillon's Publications"
	"cv:Dillon's CV"
	"software:Dillon's Software"
	"research:Dillon's Research"
)

for page in "${pages[@]}"; do
	file="${page%%:*}"
	title="${page##*:}"

	{
		sed "s/{{TITLE}}/$title/" header.html
		md2html --github "$file.md"
		cat footer.html
	} > "$file.html"
done
