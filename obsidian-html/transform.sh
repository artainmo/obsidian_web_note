sed -i '' 's/### <h3 style="color:yellow;">Yellow belt<\/h3>/<h3 id="yellow" style="color:yellow;">Yellow belt<\/h3>/g' index.md
sed -i '' 's/### <h3 style="color:orange;">Orange belt<\/h3>/<h3 id="orange" style="color:orange;">Orange belt<\/h3>/g' index.md
sed -i '' 's/### <h3 style="color:green;">Green belt<\/h3>/<h3 id="green" style="color:green;">Green belt<\/h3>/g' index.md
sed -i '' 's/### <h3 style="color:blue;">Blue belt<\/h3>/<h3 id="blue" style="color:blue;">Blue belt<\/h3>/g' index.md
sed -i '' 's/### <h3 style="color:brown;">Brown belt<\/h3>/<h3 id="brown" style="color:brown;">Brown belt<\/h3>/g' index.md
sed -i '' 's/### <h3 style="color:black;">Black belt<\/h3>/<h3 id="black" style="color:black;">Black belt<\/h3>/g' index.md

sed -i '' 's/\[\[#<h3 style="color yellow;">Yellow belt<\/h3>\|Yellow belt\]\]/\[Yellow belt\](#yellow)/g' index.md
sed -i '' 's/\[\[#<h3 style="color orange;">Orange belt<\/h3>\|Orange belt\]\]/\[Orange belt\](#orange)/g' index.md
sed -i '' 's/\[\[#<h3 style="color green;">Green belt<\/h3>\|Green belt\]\]/\[Green belt\](#green)/g' index.md
sed -i '' 's/\[\[#<h3 style="color blue;">Blue belt<\/h3>\|Blue belt\]\]/\[Blue belt\](#blue)/g' index.md
sed -i '' 's/\[\[#<h3 style="color brown;">Brown belt<\/h3>\|Brown belt\]\]/\[Brown belt\](#brown)/g' index.md
sed -i '' 's/\[\[#<h3 style="color black;">Black belt<\/h3>\|Black belt\]\]/\[Black belt\](#black)/g' index.md

sed -i '' 's/\[Nage Waza\](#Judo#Other movements and combinations#Nage Waza)/\[Nage Waza\](#nage-waza-6)/g' index.md
sed -i '' 's/\[Other\](#Judo#Other movements and combinations#Nage Waza#Other)/\[Other\](#other)/g' index.md
sed -i '' 's/\[Ne Waza\](#Judo#Other movements and combinations#Ne Waza)/\[Ne Waza\](#ne-waza-6)/g' index.md
sed -i '' 's/\[Other\](#Judo#Other movements and combinations#Ne Waza#Other)/\[Other\](#other-1)/g' index.md
sed -i '' 's/\[Other\](#Randori\/Shiai notes#Other)/\[Other\](#other-2)/g' index.md

sed -i '' 's/\[\[#Shime\/Jime Waza and Kansetsu Waza\]\]/\[Shime\/Jime Waza and Kansetsu Waza\](#shimejime-waza-and-kansetsu-waza)/g' index.md
sed -i '' 's/\[\[#Randori\/Shiai notes\]\]/\[Randori\/Shiai notes\](#randorishiai-notes)/g' index.md

sed -i '' "s/A variation exists where you drop on one knee to exert more force called \[\[#Eri Seoi Nage\|'drop Tai Otoshi'\]\]./A variation exists where you drop on one knee to exert more force called \['drop Tai Otoshi'\](#eri-seoi-nage)./g" index.md
