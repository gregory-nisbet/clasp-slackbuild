.SUFFIXES:

SHELL          := bash
EDITOR_BACKUPS := $(wildcard *~)
CLASP_TGZ      := clasp-3.1.1.tgz
CLASP_TAR_GZ   := clasp.tar.gz
TO_BUNDLE      := clasp.SlackBuild clasp.info slack-desc README

all: $(CLASP_TGZ) $(CLASP_TAR_GZ)

# make submission for slakcbuilds.com
$(CLASP_TAR_GZ): $(CLASP_TGZ)
	mkdir clasp
	cp $(TO_BUNDLE) clasp
	tar -cvzf $(CLASP_TAR_GZ) $(addprefix clasp/,$(TO_BUNDLE))
	$(RM) -rf clasp

# make tgz
$(CLASP_TGZ): $(TO_BUNDLE)
	$(RM) $(CLASP_TGZ)
	tar -cvzf $(CLASP_TGZ) $(TO_BUNDLE)	

clean:
	$(RM) $(CLASP_TGZ) $(CLASP_TAR_GZ)
	$(RM) $(EDITOR_BACKUPS)
