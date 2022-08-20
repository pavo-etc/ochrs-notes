# Anchors

This is the repository for my project archive/wiki at [notes](http://notes.zachmanson.com).  
It is a is a static website generated with a fork of [Nchrs](https://git.sr.ht/~rostiger/nchrs) which is a fork of [oscean](https://github.com/XXIIVV/Oscean).

The original code is by Devine Lu Linvega, and modified by Clemens Scott to support a custom set of markdown, linked images, and a few other adaptions. I have made several modified this further to my liking.

It is deployed on GitHub pages using a subdirectory worktree using [this](https://sangsoonam.github.io/2019/02/08/using-git-worktree-to-deploy-github-pages.html) setup.

To deploy a change in the site dir:

```
cd site
git add -A
git commit -m "Deploy updates"
git push
```

## License

The `gh-pages` branch is the **live version**.

The assets and text content is under the [BY-NC-SA4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) License, and the code is under the MIT License.
