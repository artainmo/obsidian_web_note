build: # Retrieve the note from obsidian 
	note_title=$$(cat note_title | tr -d '\r\n')
	echo $$note_title
	cat "Obsidian/Obsidian/$$note_title"
	tail -n +2 "Obsidian/Obsidian/$$note_title" >> obsidian-html/index.md # When appending omit the first line of tags
	cat obsidian-html/index.md
	cp -R Obsidian/Obsidian/.obsidian obsidian-html
	cd obsidian-html && chmod +x transform.sh && ./transform.sh
	cd obsidian-html && python -m obsidianhtml convert -i config.yml
	cat obsidian-html/output/md/index.md
	tail -n +5  obsidian-html/output/md/index.md >> index.md
	cat index.md
	# Also add local images if necessary
	# Example: cp "Obsidian/Obsidian/Screenshot 2024-03-21 at 16.44.14.png" .

update: # update obsidian to have latest judo note
	git submodule update --remote # Git knows what to update thanks to the .gitmodules file
	git add .
	git commit -m "Automatically update submodule to latest versions"
	git push

.PHONY: build update
