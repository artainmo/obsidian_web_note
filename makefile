build: # Retrieve the note from obsidian 
	- cat "obsidian/obsidian/$$(cat note_title)" > obsidian-html/index.md # The leading '-' is the Makefile-approved way to ignore errors. This allows the makefile to continue executing even when 'note_title' doesn't contain an appropriate file name.
	[ -s obsidian-html/index.md ] || echo "<br>No active file or active file not found." > obsidian-html/index.md # Write an error message for non-existing files
	cp -R Obsidian/Obsidian/.obsidian obsidian-html
	cd obsidian-html && chmod +x transform.sh && ./transform.sh
	cd obsidian-html && python -m obsidianhtml convert -i config.yml
	# Cut the added HTML by only keeping lines within the '<div class="content">', but also remove the 'inline tags' and 'index title'
	# cat obsidian-html/output/html/index.html # To view the display problem
	awk '/<div class="content">/{flag=1} flag; /<\/div>/{if(flag){flag=0; exit}}' obsidian-html/output/html/index.html \
		| sed '/<a class=\"inline-tag\"/d; /<h1 id=\"index\">index<\/h1>/d' >> index.html
	# Also add local images if necessary
	# Example: cp "Obsidian/Obsidian/Screenshot 2024-03-21 at 16.44.14.png" .
	# If wanting to display pdfs, make changes in 'obsidian-html/transform.sh'.
	cp "Obsidian/Obsidian/Coursera 4V4FNOHS1GBM.pdf" .
	cp "Obsidian/Obsidian/Screenshot 2026-01-26 at 13.46.39.png" .
	cp "Obsidian/Obsidian/Courrier fin stage Arthur Tainmont.pdf" .
	

	# For SNICA
	#cp "Obsidian/Obsidian/LOI SNICA Momo.pdf" .
	#cp "Obsidian/Obsidian/LOI SNICA Elias.pdf" .
	#cp "Obsidian/Obsidian/LOI SNICA Maximilien.pdf" .
	#cp "Obsidian/Obsidian/LOI SNICA Asma.pdf" .
	#cp "Obsidian/Obsidian/LOI SNICA Edouard.pdf" .

update: # update obsidian to have latest judo note
	git submodule update --remote # Git knows what to update thanks to the .gitmodules file
	git add .
	git commit -m "Automatically update submodule to latest versions"
	git push

.PHONY: build update
