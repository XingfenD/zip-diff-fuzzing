#!/bin/bash

lcov -c -d . -o coverage.info

genhtml coverage.info -o coverage_report
