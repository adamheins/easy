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

## Installation
You just need to put `easy` on your `$PATH`. Here is a quick one-liner:
```bash
git clone git@github.com:adamheins/easy ~/.easy && sudo cp ~/.easy/easy /usr/local/bin
```

## Compatibility
Currently only works on OSX.

## License
MIT license. See the LICENSE file.
