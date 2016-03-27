.PHONY: all pdf clean show view

TARGET=clockface

RUBBER=rubber
VIEWER=xdg-open

# rubber handles dependencies itself
.PHONY: $(TARGET).pdf

all: pdf

pdf: $(TARGET).pdf

$(TARGET).pdf:
	$(RUBBER) --pdf $(TARGET)

view: show

show: all
	$(VIEWER) $(TARGET).pdf >/dev/null 2>&1

clean:
	$(RUBBER) --pdf --clean $(TARGET)
