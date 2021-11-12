#!/bin/bash

latest_commit=$1

git fetch origin

exit $(git merge-base --is-ancestor $latest_commit HEAD)
