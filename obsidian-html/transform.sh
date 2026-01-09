# Use 'sed - i' to make specific changes in 'index.md' if necessary.

sed -i '' 's/!\[\[Certificate_NSL_Recognised.pdf\]\]/<div class="pdf-container"><embed src="Certificate_NSL_Recognised.pdf" type="application\/pdf"><\/div>/g' index.md
sed -i '' 's/!\[\[open_project_school19_manuscript.pdf\]\]/<div class="pdf-container"><embed src="open_project_school19_manuscript.pdf" type="application\/pdf"><\/div>/g' index.md

sed -i '' 's/!\[\[LOI SNICA Edouard.pdf\]\]/<embed src="LOI SNICA Edouard.pdf" type="application\/pdf">/g' index.md
sed -i '' 's/!\[\[LOI SNICA Asma.pdf\]\]/<embed src="LOI SNICA Asma.pdf" type="application\/pdf">/g' index.md
sed -i '' 's/!\[\[LOI SNICA Maximilien.pdf\]\]/<embed src="LOI SNICA Maximilien.pdf" type="application\/pdf">/g' index.md
sed -i '' 's/!\[\[LOI SNICA Elias.pdf\]\]/<embed src="LOI SNICA Elias.pdf" type="application\/pdf">/g' index.md
sed -i '' 's/!\[\[LOI SNICA Momo.pdf\]\]/<embed src="LOI SNICA Momo.pdf" type="application\/pdf">/g' index.md
