# check-staged

This action checks that the source branch of a PR has been merged into a staging branch.


## Inputs

* `staging-branch`

The name of the staging branch you'd like to check. Defaults to `staging`.


## Outputs

The check will pass if the latest commit in the PR has been merged into the staging branch.


## Example usage

```yml
# .github/workflows/check-branch-is-staged.yml

on: pull_request

jobs:
  check-branch-is-staged:
    name: Check the branch is staged before it can be merged
    runs-on: ubuntu-latest
    steps:
      - uses: jack-lewin/check-staged@v1.0
        with:
          staging-branch: 'dev'
```
