# Contributing

## Steps to submit a PR

- Clone/Fork the repo
- Install dependencies: `npm install`
- Ensure tests pass: `npm test`
- Make changes and then make sure the tests still pass
- Push your branch/fork and [submit a PR][pr]
- Assign a [sparkboxer][contributors] to review your PR

## Commit Style

We use [Conventional Commits] and [Standard Version] to automate versioning of this package. Commit messages must be prefixed with a valid commit type and the commit type cannot be prefixed with any additional text.

Supported commit types include `feat`, `fix`, `docs`, `style`, `refactor`, and `test`.

Valid example:

```sh
feat: add new linting rule for ...
```

Invalid examples:

```sh
feature: add new linting rule for ...
```

```sh
:sparkles: feat: add new linting rule for ...
```

ℹ️ See the [Conventional Commits] page for further details on available commit types and how to handle breaking changes.

## Creating a Release

When making a change that requires a new version to be published, you'll want to run the release task before merging to master.

```sh
npm run release
```

After running this command, you'll get a preview of what the next tagged version would be. If you proceed, the release script will:

- Use all commit messages since the latest version tag to determine the correct new version
- Increment the version in package.json and package-lock.json
- Create a tagged commit with the new version
- Push your branch (and new tag) to the remote

After your branch is merged, CI will take care of publishing to the npm registry.

ℹ️ See the [Standard Version][standard cli] documentation for details on how to control versioning behavior. If you need to [pass additional arguments][npm script args] to `standard-version`, you can use `--` with the `release` script.

Example:
```sh
npm run release -- --prerelease
```

### Specifying a release type

Sometimes, you'll want manual control over the next version of the package. In these cases, you can refer to the [`standard-version`][standard cli] cli option `--release-as`.

Major Release

```sh
npm run release -- --release-as major
```

Minor Release

```sh
npm run release -- --release-as minor
```

Patch Release

```sh
npm run release -- --release-as patch
```

[pr]: https://github.com/sparkbox/safe-focus/compare
[contributors]: https://github.com/sparkbox/safe-focus/graphs/contributors
[Conventional Commits]: https://www.conventionalcommits.org/en/v1.0.0/
[Standard Version]: https://github.com/conventional-changelog/standard-version
[standard cli]: https://github.com/conventional-changelog/standard-version#cli-usage
[npm script args]: https://docs.npmjs.com/cli/v7/commands/npm-run-script#:~:text=Any%20positional%20arguments,test%20--%20--grep%3D%22pattern%22
