
mkdir -p Videos Musica Imagenes Documentos Comprimidos Scripts

mv *.mp4 *.mkv *.avi *.mov *.flv Videos/ 2>/dev/null

mv *.mp3 *.wav *.flac *.aac Musica/ 2>/dev/null

mv *.zip *.rar *.tar *.gz *.7z *.tar.gz Comprimidos/ 2>/dev/null

mv *.jpg *.jpeg *.png *.gif *.webp *.svg Imagenes/ 2>/dev/null

mv *.pdf *.doc *.docx *.txt *.xls *.xlsx *.ppt *.pptx *.odt Documentos/ 2>/dev/null

ls -F 