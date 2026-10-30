# Worklittle Homebrew tap

Install the [Worklittle CLI](https://docs.worklittle.com/libraries/cli) for [api.worklittle.com](https://api.worklittle.com).

```bash
brew install worklittle/tap/worklittle
```

```bash
export WORKLITTLE_API_KEY=sk-wl-api01-...
worklittle jobs search --q="software engineer" --limit 3 --pretty
```

Create an API key in [Work](https://worklittle.com/business). Prefer the `WORKLITTLE_API_KEY` environment variable over `--api-key` so the key does not show up in process lists.

## Links

- [CLI docs](https://docs.worklittle.com/libraries/cli)
- [API docs](https://docs.worklittle.com)
- [Worklittle](https://worklittle.com)

## Other install

If you do not use Homebrew:

```bash
curl -fsSL https://worklittle.com/install | bash
```

## License

MIT
