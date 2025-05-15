build: # Retrieve the note from obsidian 
	tail -n +2 "obsidian/obsidian/$$(cat note_title)" >> obsidian-html/index.md # When appending omit the first line of tags
	cp -R Obsidian/Obsidian/.obsidian obsidian-html
	cd obsidian-html && chmod +x transform.sh && ./transform.sh
	cd obsidian-html && python -m obsidianhtml convert -i config.yml
	cat obsidian-html/output/html/index.html >> index.html
	# Also add local images if necessary
	# Example: cp "Obsidian/Obsidian/Screenshot 2024-03-21 at 16.44.14.png" .
	cp "Obsidian/Obsidian/C9FF9A46-7004-4F71-B873-A8022906A5AD_1_105_c.jpeg" .

update: # update obsidian to have latest judo note
	git submodule update --remote # Git knows what to update thanks to the .gitmodules file
	git add .
	git commit -m "Automatically update submodule to latest versions"
	git push

.PHONY: build update
