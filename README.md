# git-notify #

git-notify -- send git commit emails in your post-receive hook

## Why Use It? ##

* Developers like simple plaintext emails.
* Can send a single digest email per push, instead of an email for each commit.
* Do you trust your email provider with your code? If not, diffs can be turned off.

## Installation and Usage ##

    cd /var/git/my-bare-repo
    git config notify.to          developers@example.com
    git config notify.from        commits@example.com
    git config notify.maxdiff     0  # don't put diffs in emails (more secure)
    git config notify.maxnotices  0  # send a single digest email per push
    ln -s `which git-notify` hooks/post-receive

## What the Email Looks Like ##

    From: commits@example.com
    To: developers@example.com
    Subject: New commits on git-notify branch master

    commit 7c21c6e1b344feae6f31e3ae6c76428b045ac452
    Author: Alan Grow <alangrow@... .com>
    Date:   Mon May 20 20:00:13 2013 -0600

        better markdown README with installation instruction, requirements, and motivation.

    commit 0252e2f7489befc0e4a957593b31b6fb11ab4896
    Author: Alan Grow <alangrow@... .com>
    Date:   Mon May 20 19:37:22 2013 -0600

        check exit status of git commands that pipe output to us. die and report non-zero exit codes.

## Requirements ##

* perl (no modules outside of core needed)
* sendmail (or sendmail-compatible program like qmail-inject)
* git

## License ##

GPL

## History ##

Originally developed by Alexandre Julliard for the Wine project.

