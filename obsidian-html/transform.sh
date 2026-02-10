# Use 'sed - i' to make specific changes in 'index.md' if necessary.

#Open project
sed -i '' 's/!\[\[Certificate_NSL_Recognised.pdf\]\]/<div class="pdf-container"><embed src="Certificate_NSL_Recognised.pdf" type="application\/pdf"><\/div>/g' index.md
sed -i '' 's/!\[\[open_project_school19_manuscript.pdf\]\]/<div class="pdf-container"><embed src="open_project_school19_manuscript.pdf" type="application\/pdf"><\/div>/g' index.md

#SNICA
sed -i '' 's/!\[\[LOI SNICA Edouard.pdf\]\]/<embed src="LOI SNICA Edouard.pdf" type="application\/pdf">/g' index.md
sed -i '' 's/!\[\[LOI SNICA Asma.pdf\]\]/<embed src="LOI SNICA Asma.pdf" type="application\/pdf">/g' index.md
sed -i '' 's/!\[\[LOI SNICA Maximilien.pdf\]\]/<embed src="LOI SNICA Maximilien.pdf" type="application\/pdf">/g' index.md
sed -i '' 's/!\[\[LOI SNICA Elias.pdf\]\]/<embed src="LOI SNICA Elias.pdf" type="application\/pdf">/g' index.md
sed -i '' 's/!\[\[LOI SNICA Momo.pdf\]\]/<embed src="LOI SNICA Momo.pdf" type="application\/pdf">/g' index.md

#Internship II
sed -i '' 's/!\[\[Coursera 4V4FNOHS1GBM.pdf\]\]/<embed src="Coursera 4V4FNOHS1GBM.pdf" type="application\/pdf">/g' index.md
sed -i '' 's/!\[\[Courrier fin stage Arthur Tainmont.pdf\]\]/<embed src="Courrier fin stage Arthur Tainmont.pdf" type="application\/pdf">/g' index.md

#Other
sed -i '' 's/!\[\[MedirisMulti-2596701.pdf\]\]/<embed src="MedirisMulti-2596701.pdf" type="application\/pdf">/g' index.md
