#!/usr/bin/env bash

shopt -s extglob
rm -- !(header|footer).html
