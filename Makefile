join: title.ms
	mkdir -p ./out
	{ preconv -e utf8 title.ms && preconv -e utf8 doc.ms; } | groff -ms -Tpdf > out/doc.pdf

title.ms: 
	cp ~/Documents/Курс_3/Шаблоны/title.ms .

clean:
	rm -r out/
	rm title.ms
