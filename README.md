# git-notify #

git-notify -- send git commit emails in your post-receive hook

## Why Use It? ##

* Developers like simple plaintext emails.
* Can send a single digest email per push, instead of an email for each commit.
* Do you trust your email provider with your code? If not, diffs can be turned off.

## Installation and Usage ##

    cd /var/git/my-bare-repo
    git config notify.to          developers@example.com
    git config notify.from        no-reply@example.com
    git config notify.maxdiff     0  # don't put diffs in emails (more secure)
    git config notify.maxnotices  0  # send a single digest email per push
    ln -s `which git-notify` hooks/post-receive

## Requirements ##

* perl (no modules outside of core needed)
* sendmail (or sendmail-compatible program like qmail-inject)
* git

## License ##

GPL

## History ##

Originally developed by Alexandre Julliard for the Wine project.

