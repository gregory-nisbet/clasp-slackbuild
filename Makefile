.SUFFIXES:

SHELL          := bash
EDITOR_BACKUPS := $(wildcard *~)
CLASP_TGZ      := clasp-3.1.1.tgz
TO_BUNDLE      := clasp.SlackBuild clasp.info slack-desc README

all: $(CLASP_TGZ)

$(CLASP_TGZ): $(TO_BUNDLE)
	$(RM) $(CLASP_TGZ)
	tar -cvzf $(CLASP_TGZ) $(TO_BUNDLE)

clean:
	$(RM) $(CLASP_TGZ)
	$(RM) $(EDITOR_BACKUPS)
