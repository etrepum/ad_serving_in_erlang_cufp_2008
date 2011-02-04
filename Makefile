OUTPUT=index.html slides.html

all: $(OUTPUT)

clean:
	rm -f $(OUTPUT)

index.html: slides.html
	cp $< $@

slides.html: slides.txt includes/*.html
	rst2s5.py --theme-url ui/mochikit slides.txt $@

.PHONY: all clean
