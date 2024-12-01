# cowsay-org/cowsay Homebrew Tap

![Moo](simple_moo_terminal_screenshot.png)

This is a custom tap for Mac [Homebrew](https://brew.sh) from [cowsay-org](https://github.com/cowsay-org). The formulae in it provide the cowsay utility, along with alternate implementations of it and auxiliary packages that work with it.

This tap is part of the cowsay-apj project, a modern fork of cowsay. The main apjanke/cowsay project repo is at <https://github.com/cowsay-org/cowsay>.

You don't need this tap to install cowsay-apj any more! As of 2024-11-30, core Homebrew has [picked up cowsay-apj](https://github.com/Homebrew/homebrew-core/pull/199516) for the core Homebrew [`cowsay` formula](https://github.com/Homebrew/homebrew-core/blob/fef8abb06a723394ef5912739627de3af08d28f5/Formula/c/cowsay.rb). Now, a regular `brew install cowsay` will get you cowsay-apj. This tap is now just for auxiliary formulae, like additional cow collections (including cowsay-apj's own cowsay-off for offensive cows) and alternate cowsay implementations.

For info about Mac Homebrew, see [brew.sh](https://brew.sh).

## How do I install these formulae?


```bash
brew tap cowsay-org/cowsay
brew install cowsay-apj
brew install cowsay-files
```

## Troubleshooting

First read the [Homebrew Troubleshooting Checklist](https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Troubleshooting.md#troubleshooting).

Use `brew gist-logs <formula>` to create a [Gist](https://gist.github.com/) and post the link in your issue.

Search [open](https://github.com/cowsay-org/homebrew-cowsay/issues?state=open) and [closed](https://github.com/cowsay-org/homebrew-cowsay/issues?state=closed) issues. See also Homebrew's  [Common Issues](https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Common-Issues.md) and [FAQ](https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/FAQ.md).

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://github.com/Homebrew/brew/tree/master/share/doc/homebrew#readme).
