build: # Retrieve the note from obsidian 
	tail -n +2 "obsidian/obsidian/$$(cat note_title)" >> obsidian-html/index.md # When appending omit the first line of tags
	cp -R Obsidian/Obsidian/.obsidian obsidian-html
	cd obsidian-html && chmod +x transform.sh && ./transform.sh
	cd obsidian-html && python -m obsidianhtml convert -i config.yml
	cat obsidian-html/output/html/index.html
	# Cut the added HTML by only keeping lines between start and end
	start=229; \
	total=$$(wc -l < obsidian-html/output/html/index.html); \
	end=$$((total - 177)); \
	sed -n "$${start},$${end}p" obsidian-html/output/html/index.html >> index.html
	# Also add local images if necessary
	# Example: cp "Obsidian/Obsidian/Screenshot 2024-03-21 at 16.44.14.png" .
	# If wanting to display pdfs, make changes in 'obsidian-html/transform.sh'.


update: # update obsidian to have latest judo note
	git submodule update --remote # Git knows what to update thanks to the .gitmodules file
	git add .
	git commit -m "Automatically update submodule to latest versions"
	git push

.PHONY: build update
