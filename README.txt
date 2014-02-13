dotfiles
========

Personal configuration settings.

use
---

Basically, drop these as dotfiles in your home directory. There's a
helper script:

    ./restore-dotfiles.sh

Note that vim and tmux configuration is handled by [maximum-awesome](https://github.com/philadams/maximum-awesome).

And you get something like this:

![screenshot.png](./screenshot.png)

Note: the vim settings assume you're running
[janus](http://github.com/carlhuda/janus). You install janus via `curl
-Lo- https://bit.ly/janus-bootstrap | bash` and update from your
`~/.vim` dir with a simple `rake`. `./janus` is the intended local spot
to store janus personalizations - `./restore-dotfiles` drops it at
`~/.janus`.

future
------

- break out aliases and useful functions into their own files
- a better way of having one config file working on both the ubuntu and
  os x machines
