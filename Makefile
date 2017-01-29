clasp_tgz := clasp-3.1.1.tar.gz
sources   := clasp.SlackBuild clasp.info slack-desc README

# make submission for slakcbuilds.org
$(clasp_tgz): $(sources)
	mkdir clasp
	cp $^ clasp
	tar -cvzf $@ $(addprefix clasp/,$^)
	$(RM) -rf clasp

clean:
	$(RM) -rf $(clasp_tgz) clasp
