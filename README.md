joemiller/toolbox
=================

My [CoreOS Toolbox docker image](https://github.com/coreos/toolbox). Contains
various diagnostic tools for debugging [CoreOS Container Linux](https://coreos.com),
[Google Container-Optimized OS](https://cloud.google.com/container-optimized-os/docs/),
or any similar (read-only root, containers-only) Linux environment.

A work in progress.

https://hub.docker.com/r/joemiller/toolbox/

Usage
-----

To change the default settings, modify the /etc/default/toolbox file, or specify
new values for the variables in `${HOME}/.toolboxrc`:

```
echo "TOOLBOX_DOCKER_IMAGE=joemiller/toolbox" > "${HOME}/.toolboxrc"
echo "TOOLBOX_DOCKER_TAG=latest" >> "${HOME}/.toolboxrc"
```

Then, execute `toolbox` to download the image and spawn a shell.

Further details on customizing toolbox execution: https://cloud.google.com/container-optimized-os/docs/how-to/toolbox

TODO
----
- [x] initial container build, based on google's toolbox, with a bunch of common diagnostic tools built in
- [x] determine if this image is gonna be too big or not (how?)
  - [ ] maybe make an alpine based variant
- [ ] install non-deb tools:
  - [ ] docker (pick the best current method since our example is 3yr old)
  - [ ] runc (multiple versions?)
  - [ ] gcloud
  - [ ] kubectl
  - [ ] sysdig .. do we want it in right now?
  - [ ] go?
  - [ ] neovim
- [ ] get dotfiles working
- [ ] see if we can get SSH_AUTH_SOCK to work
- [ ] get neovim working in a decent enough way
- [ ] dev tools?
  - [ ] linters, etc, multiple langs.. go, python, ruby …
- [x] setup CI/CD. At least a build+push of a new tag on master commit.

references:
-----------

- I copied most of this to get started: https://hub.docker.com/r/ragnarb/toolbox/
- Google's COS doc: https://cloud.google.com/container-optimized-os/docs/how-to/toolbox
