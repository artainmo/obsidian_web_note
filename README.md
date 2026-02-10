# obsidian_web_note
Personal project. Git repository synchronized with obsidian submodule to take up-to-date variable markdown note and display it on website using Jekyll, [obsidian-html](https://obsidian-html.github.io/) and custom transformations.

## Use
Write the name of the file you want to display in [note_title](https://github.com/artainmo/obsidian_web_note/blob/main/note_title). Don't forget the '.md' extension. If empty or file not found, the website displays an error message appropriately.<br>
In the [makefile](https://github.com/artainmo/obsidian_web_note/blob/main/makefile) you can add images who need to be displayed.<br>
In [obsidian-html/transform.sh](https://github.com/artainmo/obsidian_web_note/blob/main/obsidian-html/transform.sh) you can make PDFs display.<br>
You can add custom CSS in [assets/css/style.scss](https://github.com/artainmo/obsidian_web_note/blob/main/assets/css/style.scss).
