# Use 'sed - i' to make specific changes in 'index.md' if necessary.

sed -i '' 's/!\[\[Certificate_NSL_Recognised.pdf\]\]/<div class="pdf-container"><embed src="Certificate_NSL_Recognised.pdf" type="application\/pdf"><\/div>/g' index.md
sed -i '' 's/!\[\[open_project_school19_manuscript.pdf\]\]/<div class="pdf-container"><embed src="open_project_school19_manuscript.pdf" type="application\/pdf"><\/div>/g' index.md
