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
1. Pipe output to `easy`. For example:
   ```bash
   ls | easy
   ```
   This will print the output of `ls` with line numbers.
2. Now just run `easy <num>` where `<num>` is the line number of the line you
   want to copy. Executing the command will copy that line (with the number) to
   the system clipboard.

## Compatibility
Currently only works on OSX.

## License
MIT license. See the LICENSE file.
