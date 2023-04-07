# Generate GitHub App Token Action

GitHub Actions workflow that automates the process of generating a GitHub App token

## Example usage

```yaml
 - name: Generate Github App Token
  uses: zio/generate-github-app-token@v1.0.0
  with:
    app_id: ${{ secrets.APP_ID }}
    app_private_key: ${{ secrets.APP_PRIVATE_KEY }}
    github_repo: ${{ github.repository }} // optional
```

## Inputs

This Github Action generates a Github App Token for a given Github App ID, Github App Private Key, and Github Repository.

### `app_id`

**Required** The ID of the Github App.

### `app_private_key`

**Required** The private key of the Github App.

### `github_repo`

**Optional** The full name of the Github repository (e.g. `owner/repo`). If not provided, the repository name is obtained from the Github Actions context.

## Outputs

### `token`

The generated Github App Token.

### `unscoped_token`

The generated Github App Unscoped Token.

