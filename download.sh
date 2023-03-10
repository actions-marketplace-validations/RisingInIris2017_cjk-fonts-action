#!/bin/bash

# Download
while getopts 'f:' flag; do
  case "${flag}" in
    f) flags="${OPTARG}" ;;
    *) print_usage
      exit 1 ;;
  esac
done

wget -O SourceHanSansHWSC.zip ${flags} https://github.com/adobe-fonts/source-han-sans/releases/download/2.004R/SourceHanSansHWSC.zip
unzip SourceHanSansHWSC.zip

# Copy fonts to font directory
cp -i OTF/SimplifiedChineseHW/SourceHanSansHWSC-Regular.otf $HOME/share/fonts/SourceHanSans
cp -i OTF/SimplifiedChineseHW/SourceHanSansHWSC-Bold.otf $HOME/share/fonts/SourceHanSans