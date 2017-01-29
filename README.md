# clasp-slackbuild
Slackbuild for Clasp

installation instructions:

Slackbuilds are kind of tricky to understand the first time around.

The Slackbuild executable script creates an archive with the right permissions
and owners and paths in /tmp.

This archive is in the format that the lower-level installpkg tool expects. 
`installpkg` is a shell script that's part of Slackware.
It takes an archive (.tar, .tgz, and a few others)

The archive created by the slackbuild script has a formulaic name
with information like the package name, the version, the architecture, etc.

```
    Slackware package /tmp/clasp-3.1.1-x86f_64-1_SBo.tgz created.
```

Looking at the contents, we can see stuff

```
    $ tar -tf clasp-3.1.1-x86_64-1_SBo.tgz 
    ./
    usr/
    usr/doc/
    usr/doc/clasp-3.1.1/
    usr/doc/clasp-3.1.1/COPYING
    usr/doc/clasp-3.1.1/README
    usr/doc/clasp-3.1.1/CHANGES
    usr/doc/clasp-3.1.1/clasp.SlackBuild
    usr/bin/
    usr/bin/clasp
    install/
    install/slack-desc
```

(as root)

```
    # ./clasp.SlackBuild
    ...
    ...
    Slackware package /tmp/clasp-3.1.1-x86_64-1_SBo.tgz created.
    # installpkg /tmp/clasp-3.1.1-x86_64-1_SBo.tgz
```
