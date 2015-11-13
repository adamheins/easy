# easy
Easy allows you to easily copy terminal output.

## Usage
Let's say you have a terminal command that outputs a bunch of lines. You know
you want to copy one of those lines. There are generally a few ways to do this:
* Highlight the text with the mouse.
* Enter some sort of copy-mode (like in tmux) and highlight the text with the
  keyboard.

Both ways usually take a bit of time. easy helps save that time.

Here's how it works:

Pipe output to `easy`. For example:
```bash
ls | easy
```
This will print the output of `ls` with line numbers.

Now just run `easy <line>` where `<line>` is the line number of the line you
want to copy. Executing the command will copy that line (with the number) to
the system clipboard.

You can also pass an optional `<word>` argument after `<line>`, which specifies
which word to copy from the line. The list of words are 0-indexed and delimited
by spaces.

## Full Example
Here is a full example for browsing the most recent git commits of a repo and
then copying one of the commit hashes.
```bash
$ git log | grep commit | head | easy
     1  commit 131d77589729be3e91a2e3b87061326d0ed26e79
     2  commit 55cb2413a57e2829dc3c5bae36690b8135d5e7b7
     3  commit 704b4c4ef8f395d82eb11672fdf635384ad955dd
     4  commit 097384295d7799b68e8d455d59e5bff7aef11a2d
     5  commit b354d6a45df3ead7aa87c082ceabcaa9b2d40706
     6  commit 60adb384cbb1852c409a0d8e32675fdad4887902
     7  commit e35119abdf17e28ecfabbb21f822cc6d4a34538a
     8  commit 5fd29afbf428fd9cc069f842258b3bb11114f1ca
     9  commit 552ef72aa0680d0072b5b8672d0359d939d966ac
    10  commit 6a0011ecb54d04a597e5ed7406c5bd30d62a94eb
$ easy 4 1
Copied '097384295d7799b68e8d455d59e5bff7aef11a2d' to clipboard.
```

`git log` displays the commits, `grep commit` displays only lines containing
the word "commit", `head` displays only the first 10 lines, and `easy` numbers
the lines and logs them. The next command, `easy 4 1`, copies the second word
on the fourth line to the clipboard.

## Installation
You just need to put `easy` on your `$PATH`. Here is a quick one-liner:
```bash
git clone git@github.com:adamheins/easy ~/.easy && sudo cp ~/.easy/easy /usr/local/bin
```

## Compatibility
Currently only works on OSX.

## License
MIT license. See the LICENSE file.
