#! /bin/bash

# todo: check if makefile would be better

# tests
prospector
coverage run --branch -m pytest -v --color=yes .
find . -iname "*.py" | grep -v "__init__.py" | xargs ~/.local/bin/coverage report -m

# badges
anybadge -l errors --value=$(prospector | grep "Messages Found:" | cut -d ' ' -f 5) -m "%3d" -o -f docs/linter.svg
anybadge -l tests --value=$(pytest -v --color=yes --cov . | grep collected | tr -s ' ' | cut -d ' ' -f 4) -m "%3d" -o -f docs/tests.svg
anybadge -l coverage --value=$(pytest -v --color=yes --cov . | grep TOTAL | tr -s ' ' | cut -d ' ' -f 4) -o -f docs/coverage.svg 2=red 4=orange 8=yellow 10=green
