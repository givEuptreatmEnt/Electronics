#!/bin/bash

m4 -I libcct pgf.m4 fig4_74.m4 > fig4_74.pic
dpic -g fig4_74.pic > fig4_74.tex
