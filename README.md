# Example Repository for `pre-commit-hooks-matlab`

Example project with m-files and Simulink models to be linted/cleaned.

`pre-commit` hooks:

- MATLAB: Auto cleanup code with [`TidyCode`](https://github.com/okomarov/TidyCode)' `smartIndent` & `justify`).
- Simulink:
    - Close all open subsystems and leave a Simulink model at the top level.
    - Zoom all subsystems to fit to the window.

See Also: [`pre-commit-hooks-matlab`](https://github.com/dapperfu/pre-commit-hooks-matlab)

# Debugging / Development

- [Optional]: [Fork to your own repository](https://github.com/login?return_to=%2Fdapperfu%2Fpre-commit-hooks-matlab)
- Checkout [`pre-commit-hooks-matlab`](https://github.com/dapperfu/pre-commit-hooks-matlab) & [`pre-commit-matlab-examples`](https://github.com/dapperfu/pre-commit-matlab-examples)

```
git clone https://github.com/dapperfu/pre-commit-matlab-examples.git
git clone https://github.com/dapperfu/pre-commit-hooks-matlab.git

cd pre-commit-matlab-examples

pre-commit try-repo ..\pre-commit-hooks-matlab --all-files --verbose
```

`pre-commit` should run once and then Fail.

Run again.

`pre-commit` should run again and Pass all checks. (All files have been fixed).