#!/bin/bash

generate_changelog(){

    release_title="$RELEASE_TAGNAME / $RELEASE_DATE"
    echo "Release title: ${release_title}"
    edited_body=$(echo "$RELEASE_BODY " | sed "s|What's Changed|$release_title|")
    echo -e "${edited_body}\n$(cat CHANGELOG.md 2>/dev/null)" > CHANGELOG.md
    echo "edited_body<<EOF" >> $GITHUB_OUTPUT
    echo "${edited_body}" >> $GITHUB_OUTPUT
    echo "EOF" >> $GITHUB_OUTPUT
}

generate_changelog
